; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nForceUpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nForceUpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"nvidiafb: your nForce DIMMs are not arranged in optimal banks!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.nvidia_par*)* @nForceUpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nForceUpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.nvidia_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvidia_par*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pci_dev*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvidia_par* %4, %struct.nvidia_par** %10, align 8
  %25 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %26 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_domain_nr(i32 %29)
  store i32 %30, i32* %21, align 4
  %31 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %32 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 4080
  %35 = icmp eq i32 %34, 416
  br i1 %35, label %36, label %50

36:                                               ; preds = %5
  %37 = load i32, i32* %21, align 4
  %38 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %37, i32 0, i32 3)
  store %struct.pci_dev* %38, %struct.pci_dev** %20, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %40 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %39, i32 108, i32* %22)
  %41 = load i32, i32* %22, align 4
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 15
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* %22, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  store i32 4, i32* %22, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %22, align 4
  %49 = udiv i32 400000, %48
  store i32 %49, i32* %17, align 4
  br label %57

50:                                               ; preds = %5
  %51 = load i32, i32* %21, align 4
  %52 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %51, i32 0, i32 5)
  store %struct.pci_dev* %52, %struct.pci_dev** %20, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %54 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %53, i32 76, i32* %17)
  %55 = load i32, i32* %17, align 4
  %56 = udiv i32 %55, 1000
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %50, %47
  %58 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %59 = call i32 @pci_dev_put(%struct.pci_dev* %58)
  %60 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %61 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @NV_RD32(i32 %62, i32 1280)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = lshr i32 %64, 0
  %66 = and i32 %65, 255
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %16, align 4
  %68 = lshr i32 %67, 8
  %69 = and i32 %68, 255
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %16, align 4
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 15
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %75 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul i32 %73, %76
  %78 = load i32, i32* %13, align 4
  %79 = udiv i32 %77, %78
  %80 = load i32, i32* %15, align 4
  %81 = lshr i32 %79, %80
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %7, align 4
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i8 %83, i8* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 11
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 10
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %21, align 4
  %88 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %87, i32 0, i32 1)
  store %struct.pci_dev* %88, %struct.pci_dev** %20, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %91 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %89, i32 124, i32* %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %93 = call i32 @pci_dev_put(%struct.pci_dev* %92)
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 12
  %97 = and i32 %96, 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 64, i32* %99, align 8
  %100 = load i32, i32* %21, align 4
  %101 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %100, i32 0, i32 3)
  store %struct.pci_dev* %101, %struct.pci_dev** %20, align 8
  %102 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %103 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %102, i32 0, i32* %19)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %105 = call i32 @pci_dev_put(%struct.pci_dev* %104)
  %106 = load i32, i32* %19, align 4
  %107 = lshr i32 %106, 16
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp eq i32 %108, 425
  br i1 %109, label %116, label %110

110:                                              ; preds = %57
  %111 = load i32, i32* %19, align 4
  %112 = icmp eq i32 %111, 427
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %19, align 4
  %115 = icmp eq i32 %114, 493
  br i1 %115, label %116, label %156

116:                                              ; preds = %113, %110, %57
  %117 = load i32, i32* %21, align 4
  %118 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %117, i32 0, i32 2)
  store %struct.pci_dev* %118, %struct.pci_dev** %20, align 8
  %119 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %121 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %119, i32 64, i32* %120)
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 79
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %129 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %127, i32 68, i32* %128)
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 79
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 %133, i32* %134, align 4
  %135 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %137 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %135, i32 72, i32* %136)
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 8
  %141 = and i32 %140, 79
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %144, %146
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %116
  %152 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %116
  %154 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %155 = call i32 @pci_dev_put(%struct.pci_dev* %154)
  br label %156

156:                                              ; preds = %153, %113
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i32 3, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32 1, i32* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 10, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 9
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i32 %161, i32* %162, align 8
  %163 = load i32, i32* %17, align 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %18, align 4
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  store i32 %165, i32* %166, align 8
  %167 = call i32 @nv10CalcArbitration(%struct.TYPE_8__* %11, %struct.TYPE_7__* %12)
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %156
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = ashr i32 %173, 4
  store i32 %174, i32* %24, align 4
  %175 = load i32*, i32** %8, align 8
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %180, %171
  %177 = load i32, i32* %24, align 4
  %178 = ashr i32 %177, 1
  store i32 %178, i32* %24, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %176

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 3
  %188 = load i32*, i32** %9, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %156
  ret void
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, ...) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nv10CalcArbitration(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
