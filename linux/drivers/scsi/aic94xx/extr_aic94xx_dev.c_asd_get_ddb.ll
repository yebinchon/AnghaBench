; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_get_ddb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_get_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_get_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_get_ddb(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %6 = call i32 @FIND_FREE_DDB(%struct.asd_ha_struct* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %7, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %19 = call i32 @SET_DDB(i32 %17, %struct.asd_ha_struct* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %29, %16
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @asd_ddbsite_write_dword(%struct.asd_ha_struct* %25, i32 %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 4
  store i32 %31, i32* %4, align 4
  br label %20

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @FIND_FREE_DDB(%struct.asd_ha_struct*) #1

declare dso_local i32 @SET_DDB(i32, %struct.asd_ha_struct*) #1

declare dso_local i32 @asd_ddbsite_write_dword(%struct.asd_ha_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
