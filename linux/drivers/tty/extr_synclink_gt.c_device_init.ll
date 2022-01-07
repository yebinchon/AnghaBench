; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.slgt_info = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SLGT_MAX_PORTS = common dso_local global i32 0, align 4
@SYNCLINK_GT2_DEVICE_ID = common dso_local global i64 0, align 8
@SYNCLINK_GT4_DEVICE_ID = common dso_local global i64 0, align 8
@slgt_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s request_irq failed IRQ=%d\0A\00", align 1
@serial_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_dev*)* @device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_init(i32 %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.slgt_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @SLGT_MAX_PORTS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca %struct.slgt_info*, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SYNCLINK_GT2_DEVICE_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SYNCLINK_GT4_DEVICE_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 4, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %21
  br label %29

29:                                               ; preds = %28, %20
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %70, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call %struct.slgt_info* @alloc_dev(i32 %35, i32 %36, %struct.pci_dev* %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %40
  store %struct.slgt_info* %38, %struct.slgt_info** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %43
  %45 = load %struct.slgt_info*, %struct.slgt_info** %44, align 8
  %46 = icmp eq %struct.slgt_info* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %65, %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %55
  %57 = load %struct.slgt_info*, %struct.slgt_info** %56, align 8
  %58 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %57, i32 0, i32 4
  %59 = call i32 @tty_port_destroy(i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %61
  %63 = load %struct.slgt_info*, %struct.slgt_info** %62, align 8
  %64 = call i32 @kfree(%struct.slgt_info* %63)
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  br label %50

68:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %238

69:                                               ; preds = %34
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %30

73:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %80
  %82 = load %struct.slgt_info*, %struct.slgt_info** %81, align 8
  %83 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 4
  %85 = mul nuw i64 8, %12
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(i32 %84, %struct.slgt_info** %14, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %89
  %91 = load %struct.slgt_info*, %struct.slgt_info** %90, align 8
  %92 = call i32 @add_device(%struct.slgt_info* %91)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %95
  %97 = load %struct.slgt_info*, %struct.slgt_info** %96, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %100
  %102 = load %struct.slgt_info*, %struct.slgt_info** %101, align 8
  %103 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %102, i32 0, i32 11
  %104 = call i32 @spin_lock_init(i32* %103)
  br label %105

105:                                              ; preds = %78
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %74

108:                                              ; preds = %74
  %109 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %110 = load %struct.slgt_info*, %struct.slgt_info** %109, align 16
  %111 = call i32 @claim_resources(%struct.slgt_info* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %213, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %115 = load %struct.slgt_info*, %struct.slgt_info** %114, align 16
  %116 = call i32 @alloc_dma_bufs(%struct.slgt_info* %115)
  store i32 1, i32* %7, align 4
  br label %117

117:                                              ; preds = %145, %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %123 = load %struct.slgt_info*, %struct.slgt_info** %122, align 16
  %124 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %127
  %129 = load %struct.slgt_info*, %struct.slgt_info** %128, align 8
  %130 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %129, i32 0, i32 7
  store i32 %125, i32* %130, align 8
  %131 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %132 = load %struct.slgt_info*, %struct.slgt_info** %131, align 16
  %133 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %136
  %138 = load %struct.slgt_info*, %struct.slgt_info** %137, align 8
  %139 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %138, i32 0, i32 10
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %141
  %143 = load %struct.slgt_info*, %struct.slgt_info** %142, align 8
  %144 = call i32 @alloc_dma_bufs(%struct.slgt_info* %143)
  br label %145

145:                                              ; preds = %121
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %117

148:                                              ; preds = %117
  %149 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %150 = load %struct.slgt_info*, %struct.slgt_info** %149, align 16
  %151 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @slgt_interrupt, align 4
  %154 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %155 = load %struct.slgt_info*, %struct.slgt_info** %154, align 16
  %156 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %159 = load %struct.slgt_info*, %struct.slgt_info** %158, align 16
  %160 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %163 = load %struct.slgt_info*, %struct.slgt_info** %162, align 16
  %164 = call i64 @request_irq(i32 %152, i32 %153, i32 %157, i32 %161, %struct.slgt_info* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %148
  %167 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %168 = load %struct.slgt_info*, %struct.slgt_info** %167, align 16
  %169 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %172 = load %struct.slgt_info*, %struct.slgt_info** %171, align 16
  %173 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 @DBGERR(i8* %176)
  br label %212

178:                                              ; preds = %148
  %179 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %180 = load %struct.slgt_info*, %struct.slgt_info** %179, align 16
  %181 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  %182 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %183 = load %struct.slgt_info*, %struct.slgt_info** %182, align 16
  %184 = call i32 @adapter_test(%struct.slgt_info* %183)
  store i32 1, i32* %7, align 4
  br label %185

185:                                              ; preds = %208, %178
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %191 = load %struct.slgt_info*, %struct.slgt_info** %190, align 16
  %192 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %195
  %197 = load %struct.slgt_info*, %struct.slgt_info** %196, align 8
  %198 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %197, i32 0, i32 6
  store i32 %193, i32* %198, align 4
  %199 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 0
  %200 = load %struct.slgt_info*, %struct.slgt_info** %199, align 16
  %201 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %204
  %206 = load %struct.slgt_info*, %struct.slgt_info** %205, align 8
  %207 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %206, i32 0, i32 5
  store i32 %202, i32* %207, align 8
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %185

211:                                              ; preds = %185
  br label %212

212:                                              ; preds = %211, %166
  br label %213

213:                                              ; preds = %212, %108
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %234, %213
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %237

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %14, i64 %220
  %222 = load %struct.slgt_info*, %struct.slgt_info** %221, align 8
  store %struct.slgt_info* %222, %struct.slgt_info** %10, align 8
  %223 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %224 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %223, i32 0, i32 4
  %225 = load i32, i32* @serial_driver, align 4
  %226 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %227 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.slgt_info*, %struct.slgt_info** %10, align 8
  %230 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %229, i32 0, i32 2
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = call i32 @tty_port_register_device(i32* %224, i32 %225, i32 %228, i32* %232)
  br label %234

234:                                              ; preds = %218
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  br label %214

237:                                              ; preds = %214
  store i32 0, i32* %9, align 4
  br label %238

238:                                              ; preds = %237, %68
  %239 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %9, align 4
  switch i32 %240, label %242 [
    i32 0, label %241
    i32 1, label %241
  ]

241:                                              ; preds = %238, %238
  ret void

242:                                              ; preds = %238
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slgt_info* @alloc_dev(i32, i32, %struct.pci_dev*) #2

declare dso_local i32 @tty_port_destroy(i32*) #2

declare dso_local i32 @kfree(%struct.slgt_info*) #2

declare dso_local i32 @memcpy(i32, %struct.slgt_info**, i32) #2

declare dso_local i32 @add_device(%struct.slgt_info*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @claim_resources(%struct.slgt_info*) #2

declare dso_local i32 @alloc_dma_bufs(%struct.slgt_info*) #2

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.slgt_info*) #2

declare dso_local i32 @DBGERR(i8*) #2

declare dso_local i32 @adapter_test(%struct.slgt_info*) #2

declare dso_local i32 @tty_port_register_device(i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
