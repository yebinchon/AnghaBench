; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_pgid_is_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_pgid_is_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pgid*)* @pgid_is_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgid_is_reset(%struct.pgid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pgid*, align 8
  %4 = alloca i8*, align 8
  store %struct.pgid* %0, %struct.pgid** %3, align 8
  %5 = load %struct.pgid*, %struct.pgid** %3, align 8
  %6 = bitcast %struct.pgid* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %7, i8** %4, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.pgid*, %struct.pgid** %3, align 8
  %11 = getelementptr inbounds %struct.pgid, %struct.pgid* %10, i64 1
  %12 = bitcast %struct.pgid* %11 to i8*
  %13 = icmp ult i8* %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %25

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %8

24:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
