; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_tcw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_fcx.c_tcw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcw = type { i32, i32, i32, i32 }

@TCW_FORMAT_DEFAULT = common dso_local global i32 0, align 4
@TCW_TIDAW_FORMAT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcw_init(%struct.tcw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcw* %0, %struct.tcw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcw*, %struct.tcw** %4, align 8
  %8 = call i32 @memset(%struct.tcw* %7, i32 0, i32 16)
  %9 = load i32, i32* @TCW_FORMAT_DEFAULT, align 4
  %10 = load %struct.tcw*, %struct.tcw** %4, align 8
  %11 = getelementptr inbounds %struct.tcw, %struct.tcw* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @TCW_TIDAW_FORMAT_DEFAULT, align 4
  %13 = call i32 @TCW_FLAGS_TIDAW_FORMAT(i32 %12)
  %14 = load %struct.tcw*, %struct.tcw** %4, align 8
  %15 = getelementptr inbounds %struct.tcw, %struct.tcw* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.tcw*, %struct.tcw** %4, align 8
  %20 = getelementptr inbounds %struct.tcw, %struct.tcw* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.tcw*, %struct.tcw** %4, align 8
  %26 = getelementptr inbounds %struct.tcw, %struct.tcw* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @memset(%struct.tcw*, i32, i32) #1

declare dso_local i32 @TCW_FLAGS_TIDAW_FORMAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
