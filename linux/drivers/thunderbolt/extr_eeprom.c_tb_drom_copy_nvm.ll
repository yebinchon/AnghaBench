; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_copy_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_copy_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32*, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32*)* @tb_drom_copy_nvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_drom_copy_nvm(%struct.tb_switch* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %9 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %17 = load i32, i32* @TB_CFG_SWITCH, align 4
  %18 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %19 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 12
  %22 = call i32 @tb_sw_read(%struct.tb_switch* %16, i64* %6, i32 %17, i64 %21, i32 1)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %89

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %89

33:                                               ; preds = %27
  %34 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %35 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 14
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @dma_port_flash_read(i32 %36, i64 %38, i32* %39, i32 4)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %89

45:                                               ; preds = %33
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 13
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @kzalloc(i32 %50, i32 %51)
  %53 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %54 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %56 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %89

62:                                               ; preds = %45
  %63 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %64 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %68 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dma_port_flash_read(i32 %65, i64 %66, i32* %69, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %81

76:                                               ; preds = %62
  %77 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %78 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %79 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %78, i32 0, i32 1
  %80 = call i32 @tb_drom_read_uid_only(%struct.tb_switch* %77, i32* %79)
  store i32 0, i32* %3, align 4
  br label %89

81:                                               ; preds = %75
  %82 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %83 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  %86 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %87 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %76, %59, %43, %30, %25, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @tb_sw_read(%struct.tb_switch*, i64*, i32, i64, i32) #1

declare dso_local i32 @dma_port_flash_read(i32, i64, i32*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @tb_drom_read_uid_only(%struct.tb_switch*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
