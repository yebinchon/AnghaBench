; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_ssqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_ssqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_ssqd_area = type { %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.subchannel_id = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_ssqd(i64 %0, %struct.chsc_ssqd_area* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca %struct.chsc_ssqd_area*, align 8
  %6 = bitcast %struct.subchannel_id* %4 to i64*
  store i64 %0, i64* %6, align 4
  store %struct.chsc_ssqd_area* %1, %struct.chsc_ssqd_area** %5, align 8
  %7 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %8 = call i32 @memset(%struct.chsc_ssqd_area* %7, i32 0, i32 24)
  %9 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %10 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 16, i32* %11, align 4
  %12 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %13 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 36, i32* %14, align 4
  %15 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %18 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %22 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %26 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %28 = call i64 @chsc(%struct.chsc_ssqd_area* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.chsc_ssqd_area*, %struct.chsc_ssqd_area** %5, align 8
  %35 = getelementptr inbounds %struct.chsc_ssqd_area, %struct.chsc_ssqd_area* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @chsc_error_from_response(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @memset(%struct.chsc_ssqd_area*, i32, i32) #1

declare dso_local i64 @chsc(%struct.chsc_ssqd_area*) #1

declare dso_local i32 @chsc_error_from_response(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
