; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_target_type_a_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_target_type_a_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_target_type_a = type { i32, i32 }

@PN533_TYPE_A_SENS_RES_SSD_JEWEL = common dso_local global i64 0, align 8
@PN533_TYPE_A_SENS_RES_PLATCONF_JEWEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533_target_type_a*, i32)* @pn533_target_type_a_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_target_type_a_is_valid(%struct.pn533_target_type_a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533_target_type_a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pn533_target_type_a* %0, %struct.pn533_target_type_a** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.pn533_target_type_a*, %struct.pn533_target_type_a** %4, align 8
  %14 = getelementptr inbounds %struct.pn533_target_type_a, %struct.pn533_target_type_a* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PN533_TYPE_A_SENS_RES_SSD(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.pn533_target_type_a*, %struct.pn533_target_type_a** %4, align 8
  %18 = getelementptr inbounds %struct.pn533_target_type_a, %struct.pn533_target_type_a* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @PN533_TYPE_A_SENS_RES_PLATCONF(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PN533_TYPE_A_SENS_RES_SSD_JEWEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @PN533_TYPE_A_SENS_RES_PLATCONF_JEWEL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %12
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @PN533_TYPE_A_SENS_RES_SSD_JEWEL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PN533_TYPE_A_SENS_RES_PLATCONF_JEWEL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %24
  store i32 0, i32* %3, align 4
  br label %45

37:                                               ; preds = %32, %28
  %38 = load %struct.pn533_target_type_a*, %struct.pn533_target_type_a** %4, align 8
  %39 = getelementptr inbounds %struct.pn533_target_type_a, %struct.pn533_target_type_a* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @PN533_TYPE_A_SEL_CASCADE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %45

44:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %36, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @PN533_TYPE_A_SENS_RES_SSD(i32) #1

declare dso_local i64 @PN533_TYPE_A_SENS_RES_PLATCONF(i32) #1

declare dso_local i64 @PN533_TYPE_A_SEL_CASCADE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
