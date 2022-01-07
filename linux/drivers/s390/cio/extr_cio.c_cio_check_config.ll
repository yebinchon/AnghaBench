; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_check_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.schib = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, %struct.schib*)* @cio_check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio_check_config(%struct.subchannel* %0, %struct.schib* %1) #0 {
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.schib*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  store %struct.schib* %1, %struct.schib** %4, align 8
  %5 = load %struct.schib*, %struct.schib** %4, align 8
  %6 = getelementptr inbounds %struct.schib, %struct.schib* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %14, label %101

14:                                               ; preds = %2
  %15 = load %struct.schib*, %struct.schib** %4, align 8
  %16 = getelementptr inbounds %struct.schib, %struct.schib* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %101

24:                                               ; preds = %14
  %25 = load %struct.schib*, %struct.schib** %4, align 8
  %26 = getelementptr inbounds %struct.schib, %struct.schib* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %101

34:                                               ; preds = %24
  %35 = load %struct.schib*, %struct.schib** %4, align 8
  %36 = getelementptr inbounds %struct.schib, %struct.schib* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %101

44:                                               ; preds = %34
  %45 = load %struct.schib*, %struct.schib** %4, align 8
  %46 = getelementptr inbounds %struct.schib, %struct.schib* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %44
  %55 = load %struct.schib*, %struct.schib** %4, align 8
  %56 = getelementptr inbounds %struct.schib, %struct.schib* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %60 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %54
  %65 = load %struct.schib*, %struct.schib** %4, align 8
  %66 = getelementptr inbounds %struct.schib, %struct.schib* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %70 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %64
  %75 = load %struct.schib*, %struct.schib** %4, align 8
  %76 = getelementptr inbounds %struct.schib, %struct.schib* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %80 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %78, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %74
  %85 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %86 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.schib*, %struct.schib** %4, align 8
  %92 = getelementptr inbounds %struct.schib, %struct.schib* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %95 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br label %99

99:                                               ; preds = %90, %84
  %100 = phi i1 [ true, %84 ], [ %98, %90 ]
  br label %101

101:                                              ; preds = %99, %74, %64, %54, %44, %34, %24, %14, %2
  %102 = phi i1 [ false, %74 ], [ false, %64 ], [ false, %54 ], [ false, %44 ], [ false, %34 ], [ false, %24 ], [ false, %14 ], [ false, %2 ], [ %100, %99 ]
  %103 = zext i1 %102 to i32
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
