; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_init_local.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_init_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@dlm_local_count = common dso_local global i64 0, align 8
@DLM_MAX_ADDR_COUNT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global %struct.sockaddr_storage** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_local() #0 {
  %1 = alloca %struct.sockaddr_storage, align 4
  %2 = alloca %struct.sockaddr_storage*, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* @dlm_local_count, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DLM_MAX_ADDR_COUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @dlm_our_addr(%struct.sockaddr_storage* %1, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %28

13:                                               ; preds = %8
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.sockaddr_storage* @kmemdup(%struct.sockaddr_storage* %1, i32 4, i32 %14)
  store %struct.sockaddr_storage* %15, %struct.sockaddr_storage** %2, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8
  %17 = icmp ne %struct.sockaddr_storage* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %13
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %2, align 8
  %21 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** @dlm_local_addr, align 8
  %22 = load i64, i64* @dlm_local_count, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @dlm_local_count, align 8
  %24 = getelementptr inbounds %struct.sockaddr_storage*, %struct.sockaddr_storage** %21, i64 %22
  store %struct.sockaddr_storage* %20, %struct.sockaddr_storage** %24, align 8
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %18, %12, %4
  ret void
}

declare dso_local i64 @dlm_our_addr(%struct.sockaddr_storage*, i32) #1

declare dso_local %struct.sockaddr_storage* @kmemdup(%struct.sockaddr_storage*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
