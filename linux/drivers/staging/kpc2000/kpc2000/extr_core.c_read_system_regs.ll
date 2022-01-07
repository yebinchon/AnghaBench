; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_core.c_read_system_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_core.c_read_system_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kp2000_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@REG_MAGIC_NUMBER = common dso_local global i64 0, align 8
@KP2000_MAGIC_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid magic!  Got: 0x%016llx  Want: 0x%016llx\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@REG_CARD_ID_AND_BUILD = common dso_local global i64 0, align 8
@REG_DATE_AND_TIME_STAMPS = common dso_local global i64 0, align 8
@REG_CORE_TABLE_OFFSET = common dso_local global i64 0, align 8
@REG_FPGA_HW_ID = common dso_local global i64 0, align 8
@REG_FPGA_DDNA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"system_regs: %08x %08x %08x %08x  %02x  %d %d  %016llx  %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [92 x i8] c"core table entry revision is higher than we can deal with, cannot continue with this card!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kp2000_device*)* @read_system_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_system_regs(%struct.kp2000_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kp2000_device*, align 8
  %4 = alloca i32, align 4
  store %struct.kp2000_device* %0, %struct.kp2000_device** %3, align 8
  %5 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %6 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_MAGIC_NUMBER, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readq(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @KP2000_MAGIC_VALUE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %16 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %15, i32 0, i32 9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @KP2000_MAGIC_VALUE, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @EILSEQ, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %154

24:                                               ; preds = %1
  %25 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %26 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %25, i32 0, i32 11
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REG_CARD_ID_AND_BUILD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readq(i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %32, -4294967296
  %34 = lshr i64 %33, 32
  %35 = trunc i64 %34 to i32
  %36 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %37 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 4294967295
  %41 = lshr i64 %40, 0
  %42 = trunc i64 %41 to i32
  %43 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %44 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %46 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_DATE_AND_TIME_STAMPS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readq(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, -4294967296
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %57 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = and i64 %59, 4294967295
  %61 = lshr i64 %60, 0
  %62 = trunc i64 %61 to i32
  %63 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %64 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %66 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @REG_CORE_TABLE_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readq(i64 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, -4294967296
  %74 = lshr i64 %73, 32
  %75 = trunc i64 %74 to i32
  %76 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %77 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = and i64 %79, 4294967295
  %81 = lshr i64 %80, 0
  %82 = trunc i64 %81 to i32
  %83 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %84 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %86 = call i32 @wait_and_read_ssid(%struct.kp2000_device* %85)
  %87 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %88 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %87, i32 0, i32 11
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REG_FPGA_HW_ID, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readq(i64 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 3840
  %95 = ashr i32 %94, 8
  %96 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %97 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, 31
  %100 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %101 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %103 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %102, i32 0, i32 11
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @REG_FPGA_DDNA, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readq(i64 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %110 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %112 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %111, i32 0, i32 9
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %116 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %119 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %122 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %125 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %128 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %131 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %134 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %137 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %140 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_info(i32* %114, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135, i32 %138, i32 %141)
  %143 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %144 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %153

147:                                              ; preds = %24
  %148 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %149 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %148, i32 0, i32 9
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %154

153:                                              ; preds = %24
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %147, %14
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @wait_and_read_ssid(%struct.kp2000_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
