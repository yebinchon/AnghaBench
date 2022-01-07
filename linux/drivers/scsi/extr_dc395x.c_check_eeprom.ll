; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.NvRamType = type { i32, i32, i32, i32, i64, i8**, i8**, i8**, i8** }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"EEProm checksum error: using default values and options.\0A\00", align 1
@PCI_VENDOR_ID_TEKRAM = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_TEKRAM_TRMS1040 = common dso_local global i32 0, align 4
@cfg_data = common dso_local global %struct.TYPE_2__* null, align 8
@CFG_RESET_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NvRamType*, i64)* @check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_eeprom(%struct.NvRamType* %0, i64 %1) #0 {
  %3 = alloca %struct.NvRamType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.NvRamType* %0, %struct.NvRamType** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %11 = bitcast %struct.NvRamType* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @trms1040_read_all(%struct.NvRamType* %12, i64 %13)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %16 = bitcast %struct.NvRamType* %15 to i32*
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 4660
  br i1 %32, label %33, label %165

33:                                               ; preds = %30
  %34 = load i32, i32* @KERN_WARNING, align 4
  %35 = call i32 @dprintkl(i32 %34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @PCI_VENDOR_ID_TEKRAM, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %40 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %39, i32 0, i32 8
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* @PCI_VENDOR_ID_TEKRAM, align 4
  %44 = ashr i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %48 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %47, i32 0, i32 8
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* @PCI_DEVICE_ID_TEKRAM_TRMS1040, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %55 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %54, i32 0, i32 7
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* @PCI_DEVICE_ID_TEKRAM_TRMS1040, align 4
  %59 = ashr i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %63 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %62, i32 0, i32 7
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* %61, i8** %65, align 8
  %66 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %67 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @PCI_VENDOR_ID_TEKRAM, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %72 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %71, i32 0, i32 6
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  store i8* %70, i8** %74, align 8
  %75 = load i32, i32* @PCI_VENDOR_ID_TEKRAM, align 4
  %76 = ashr i32 %75, 8
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %80 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %79, i32 0, i32 6
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  store i8* %78, i8** %82, align 8
  %83 = load i32, i32* @PCI_DEVICE_ID_TEKRAM_TRMS1040, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %87 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %86, i32 0, i32 5
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %85, i8** %89, align 8
  %90 = load i32, i32* @PCI_DEVICE_ID_TEKRAM_TRMS1040, align 4
  %91 = ashr i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %95 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %94, i32 0, i32 5
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* %93, i8** %97, align 8
  %98 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %99 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  store i32 0, i32* %8, align 4
  %100 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %101 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  store i32* %103, i32** %9, align 8
  br label %104

104:                                              ; preds = %109, %33
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 16
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32*, i32** %9, align 8
  store i32 119, i32* %108, align 4
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  br label %104

114:                                              ; preds = %104
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %9, align 8
  store i32 67112711, i32* %115, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %9, align 8
  store i32 21, i32* %117, align 4
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %124, %114
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 12
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32*, i32** %9, align 8
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %122
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %9, align 8
  br label %119

129:                                              ; preds = %119
  %130 = call i32 (...) @set_safe_settings()
  %131 = call i32 (...) @fix_settings()
  %132 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %133 = call i32 @eeprom_override(%struct.NvRamType* %132)
  %134 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %135 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %134, i32 0, i32 2
  store i32 0, i32* %135, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %136 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %137 = bitcast %struct.NvRamType* %136 to i32*
  store i32* %137, i32** %5, align 8
  br label %138

138:                                              ; preds = %146, %129
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 63
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %5, align 8
  br label %138

151:                                              ; preds = %138
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 4660, %152
  %154 = load i32*, i32** %5, align 8
  store i32 %153, i32* %154, align 4
  %155 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %156 = load i64, i64* %4, align 8
  %157 = call i32 @trms1040_write_all(%struct.NvRamType* %155, i64 %156)
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %159 = load i64, i64* @CFG_RESET_DELAY, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %164 = getelementptr inbounds %struct.NvRamType, %struct.NvRamType* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  br label %171

165:                                              ; preds = %30
  %166 = call i32 (...) @set_safe_settings()
  %167 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %168 = call i32 @eeprom_index_to_delay(%struct.NvRamType* %167)
  %169 = load %struct.NvRamType*, %struct.NvRamType** %3, align 8
  %170 = call i32 @eeprom_override(%struct.NvRamType* %169)
  br label %171

171:                                              ; preds = %165, %151
  ret void
}

declare dso_local i32 @trms1040_read_all(%struct.NvRamType*, i64) #1

declare dso_local i32 @dprintkl(i32, i8*) #1

declare dso_local i32 @set_safe_settings(...) #1

declare dso_local i32 @fix_settings(...) #1

declare dso_local i32 @eeprom_override(%struct.NvRamType*) #1

declare dso_local i32 @trms1040_write_all(%struct.NvRamType*, i64) #1

declare dso_local i32 @eeprom_index_to_delay(%struct.NvRamType*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
