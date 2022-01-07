; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_copy_efi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_copy_efi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.tb_drom_header = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ThunderboltDROM\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TB_DROM_DATA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32*)* @tb_drom_copy_efi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_drom_copy_efi(%struct.tb_switch* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @device_property_count_u8(%struct.device* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %33 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %35 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %44 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @device_property_read_u8_array(%struct.device* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %67

51:                                               ; preds = %41
  %52 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %53 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to %struct.tb_drom_header*
  %56 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TB_DROM_DATA_START, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %67

66:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %76

67:                                               ; preds = %65, %50
  %68 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %69 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %73 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %67, %66, %38, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @device_property_count_u8(%struct.device*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @device_property_read_u8_array(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
