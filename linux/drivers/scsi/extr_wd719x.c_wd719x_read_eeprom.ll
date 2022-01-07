; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.eeprom_93cx6 = type { i32, i32, i32, %struct.wd719x* }
%struct.wd719x_eeprom_header = type { i8, i8, i32 }

@wd719x_eeprom_reg_read = common dso_local global i32 0, align 4
@wd719x_eeprom_reg_write = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@WD719X_PCI_GPIO_DATA = common dso_local global i32 0, align 4
@WD719X_PCI_GPIO_CONTROL = common dso_local global i32 0, align 4
@WD719X_EE_CLK = common dso_local global i32 0, align 4
@WD719X_EE_DI = common dso_local global i32 0, align 4
@WD719X_EE_CS = common dso_local global i32 0, align 4
@WD719X_EE_DO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"EEPROM signature is invalid (0x%02x 0x%02x), using default values\0A\00", align 1
@WD719X_TYPE_7193 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wd719x*)* @wd719x_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd719x_read_eeprom(%struct.wd719x* %0) #0 {
  %2 = alloca %struct.wd719x*, align 8
  %3 = alloca %struct.eeprom_93cx6, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wd719x_eeprom_header, align 4
  store %struct.wd719x* %0, %struct.wd719x** %2, align 8
  %6 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %7 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 3
  store %struct.wd719x* %6, %struct.wd719x** %7, align 8
  %8 = load i32, i32* @wd719x_eeprom_reg_read, align 4
  %9 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @wd719x_eeprom_reg_write, align 4
  %11 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  %13 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %15 = load i32, i32* @WD719X_PCI_GPIO_DATA, align 4
  %16 = call i32 @wd719x_writeb(%struct.wd719x* %14, i32 %15, i32 0)
  %17 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %18 = load i32, i32* @WD719X_PCI_GPIO_CONTROL, align 4
  %19 = call i32 @wd719x_readb(%struct.wd719x* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @WD719X_EE_CLK, align 4
  %21 = load i32, i32* @WD719X_EE_DI, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WD719X_EE_CS, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @WD719X_EE_DO, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %32 = load i32, i32* @WD719X_PCI_GPIO_CONTROL, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @wd719x_writeb(%struct.wd719x* %31, i32 %32, i32 %33)
  %35 = bitcast %struct.wd719x_eeprom_header* %5 to i32*
  %36 = call i32 @eeprom_93cx6_multireadb(%struct.eeprom_93cx6* %3, i32 0, i32* %35, i32 8)
  %37 = getelementptr inbounds %struct.wd719x_eeprom_header, %struct.wd719x_eeprom_header* %5, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 87
  br i1 %40, label %41, label %54

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.wd719x_eeprom_header, %struct.wd719x_eeprom_header* %5, i32 0, i32 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 68
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.wd719x_eeprom_header, %struct.wd719x_eeprom_header* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %50 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = bitcast %struct.TYPE_4__* %51 to i32*
  %53 = call i32 @eeprom_93cx6_multireadb(%struct.eeprom_93cx6* %3, i32 %48, i32* %52, i32 4)
  br label %124

54:                                               ; preds = %41, %1
  %55 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %56 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.wd719x_eeprom_header, %struct.wd719x_eeprom_header* %5, i32 0, i32 0
  %60 = load i8, i8* %59, align 4
  %61 = getelementptr inbounds %struct.wd719x_eeprom_header, %struct.wd719x_eeprom_header* %5, i32 0, i32 1
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8 signext %60, i8 signext %62)
  %64 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %65 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 16, i32* %67, align 8
  %68 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %69 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 76, i32* %71, align 4
  %72 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %73 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 7, i32* %75, align 8
  %76 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %77 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  store i32 77, i32* %79, align 4
  %80 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %81 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i32 1, i32* %83, align 8
  %84 = call i8* @cpu_to_le16(i32 21845)
  %85 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %86 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 11
  store i8* %84, i8** %88, align 8
  %89 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %90 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  store i32 27, i32* %92, align 4
  %93 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %94 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WD719X_TYPE_7193, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %54
  %99 = call i8* @cpu_to_le32(i32 0)
  %100 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %101 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 10
  store i8* %99, i8** %103, align 8
  br label %110

104:                                              ; preds = %54
  %105 = call i8* @cpu_to_le32(i32 -1)
  %106 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %107 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 10
  store i8* %105, i8** %109, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = call i8* @cpu_to_le32(i32 -1)
  %112 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %113 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 9
  store i8* %111, i8** %115, align 8
  %116 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %117 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  store i32 0, i32* %119, align 8
  %120 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %121 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 7
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %110, %46
  %125 = call i8* @cpu_to_le16(i32 0)
  %126 = load %struct.wd719x*, %struct.wd719x** %2, align 8
  %127 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 8
  store i8* %125, i8** %129, align 8
  ret void
}

declare dso_local i32 @wd719x_writeb(%struct.wd719x*, i32, i32) #1

declare dso_local i32 @wd719x_readb(%struct.wd719x*, i32) #1

declare dso_local i32 @eeprom_93cx6_multireadb(%struct.eeprom_93cx6*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8 signext, i8 signext) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
