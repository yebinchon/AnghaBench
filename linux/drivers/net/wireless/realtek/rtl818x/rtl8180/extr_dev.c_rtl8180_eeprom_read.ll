; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8180_priv = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.eeprom_93cx6 = type { i32, i32, i32, %struct.rtl8180_priv* }

@rtl8180_eeprom_register_read = common dso_local global i32 0, align 4
@rtl8180_eeprom_register_write = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C66 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_PROGRAM = common dso_local global i32 0, align 4
@RTL818X_CHIP_FAMILY_RTL8187SE = common dso_local global i64 0, align 8
@RTL818X_CHIP_FAMILY_RTL8180 = common dso_local global i64 0, align 8
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8180_priv*)* @rtl8180_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_eeprom_read(%struct.rtl8180_priv* %0) #0 {
  %2 = alloca %struct.rtl8180_priv*, align 8
  %3 = alloca %struct.eeprom_93cx6, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8180_priv* %0, %struct.rtl8180_priv** %2, align 8
  %10 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %11 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 3
  store %struct.rtl8180_priv* %10, %struct.rtl8180_priv** %11, align 8
  %12 = load i32, i32* @rtl8180_eeprom_register_read, align 4
  %13 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @rtl8180_eeprom_register_write, align 4
  %15 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %17 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %18 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %17, i32 0, i32 11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @rtl818x_ioread32(%struct.rtl8180_priv* %16, i32* %20)
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @PCI_EEPROM_WIDTH_93C66, align 4
  %26 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  %29 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %32 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %33 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %32, i32 0, i32 11
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* @RTL818X_EEPROM_CMD_PROGRAM, align 4
  %37 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %31, i32* %35, i32 %36)
  %38 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %39 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %40 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %39, i32 0, i32 11
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %38, i32* %42)
  %44 = call i32 @udelay(i32 10)
  %45 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 6, i32* %5)
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 255
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %50 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 23, i32* %5)
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 8
  %54 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %55 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %57 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %56, i32 0, i32 14
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %3, i32 7, i32* %59, i32 3)
  %61 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %62 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %30
  store i32 48, i32* %4, align 4
  br label %68

67:                                               ; preds = %30
  store i32 16, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %97, %68
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 14
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 1
  %76 = add nsw i32 %73, %75
  %77 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 %76, i32* %7)
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 255
  %80 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %81 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %80, i32 0, i32 13
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 8
  %89 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %90 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %89, i32 0, i32 13
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %88, i32* %96, align 4
  br label %97

97:                                               ; preds = %72
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %6, align 4
  br label %69

100:                                              ; preds = %69
  %101 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %102 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %139, %106
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 14
  br i1 %109, label %110, label %142

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 1
  %113 = add nsw i32 32, %112
  %114 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 %113, i32* %8)
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 255
  %117 = shl i32 %116, 8
  %118 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %119 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %118, i32 0, i32 13
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %117
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 65280
  %129 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %130 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %129, i32 0, i32 13
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %128
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %110
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %6, align 4
  br label %107

142:                                              ; preds = %107
  br label %143

143:                                              ; preds = %142, %100
  %144 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %145 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = call i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %3, i32 13, i32* %9, i32 2)
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @le32_to_cpu(i32 %151)
  %153 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %154 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %153, i32 0, i32 12
  store i32 %152, i32* %154, align 8
  %155 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %156 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %155, i32 0, i32 3
  %157 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 25, i32* %156)
  br label %158

158:                                              ; preds = %149, %143
  %159 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %160 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %158
  %165 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 63, i32* %5)
  %166 = load i32, i32* %5, align 4
  %167 = and i32 %166, 256
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %173 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 3072
  %176 = icmp eq i32 %175, 1024
  %177 = zext i1 %176 to i32
  %178 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %179 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %3, i32 124, i32* %5)
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %181, 15
  %183 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %184 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %185, 240
  %187 = ashr i32 %186, 4
  %188 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %189 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %5, align 4
  %191 = and i32 %190, 4096
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %197 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %5, align 4
  %199 = and i32 %198, 3840
  %200 = ashr i32 %199, 8
  %201 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %202 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %5, align 4
  %204 = and i32 %203, 8192
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %210 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %209, i32 0, i32 10
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %164, %158
  %212 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %213 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %2, align 8
  %214 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %213, i32 0, i32 11
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %218 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %212, i32* %216, i32 %217)
  ret void
}

declare dso_local i32 @rtl818x_ioread32(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @eeprom_93cx6_read(%struct.eeprom_93cx6*, i32, i32*) #1

declare dso_local i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6*, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
