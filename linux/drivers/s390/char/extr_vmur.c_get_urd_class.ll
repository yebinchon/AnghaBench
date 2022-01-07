; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_get_urd_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_get_urd_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diag210 = type { i32, i32, i32 }
%struct.urdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@get_urd_class.ur_diag210 = internal global %struct.diag210 zeroinitializer, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urdev*)* @get_urd_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_urd_class(%struct.urdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urdev*, align 8
  %4 = alloca i32, align 4
  store %struct.urdev* %0, %struct.urdev** %3, align 8
  %5 = load %struct.urdev*, %struct.urdev** %3, align 8
  %6 = getelementptr inbounds %struct.urdev, %struct.urdev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.diag210, %struct.diag210* @get_urd_class.ur_diag210, i32 0, i32 2), align 4
  store i32 12, i32* getelementptr inbounds (%struct.diag210, %struct.diag210* @get_urd_class.ur_diag210, i32 0, i32 0), align 4
  %9 = call i32 @diag210(%struct.diag210* @get_urd_class.ur_diag210)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 0, label %11
    i32 2, label %14
    i32 3, label %16
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.diag210, %struct.diag210* @get_urd_class.ur_diag210, i32 0, i32 1), align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %16, %14, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @diag210(%struct.diag210*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
