; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_map_outb_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_map_outb_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i64, i64, %struct.TYPE_2__*, %struct.tsi721_ob_win*, %struct.tsi721_obw_bar* }
%struct.TYPE_2__ = type { i32 }
%struct.tsi721_ob_win = type { i32, i32, i8* }
%struct.tsi721_obw_bar = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OBW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"did=%d ra=0x%llx sz=0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"allocated OBW%d @%llx\00", align 1
@TSI721_PC2SR_ZONES = common dso_local global i32 0, align 4
@TSI721_ZONE_SEL = common dso_local global i64 0, align 8
@TSI721_ZONE_SEL_GO = common dso_local global i32 0, align 4
@TSI721_LUT_DATA0_ADD = common dso_local global i32 0, align 4
@TSI721_LUT_DATA0_NREAD = common dso_local global i32 0, align 4
@TSI721_LUT_DATA0_NWR = common dso_local global i32 0, align 4
@TSI721_LUT_DATA0 = common dso_local global i64 0, align 8
@TSI721_LUT_DATA1 = common dso_local global i64 0, align 8
@TSI721_LUT_DATA2 = common dso_local global i64 0, align 8
@TSI721_OBWINLB_BA = common dso_local global i32 0, align 4
@TSI721_OBWINLB_WEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i8*, i32, i32, i32, i32*)* @tsi721_map_outb_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_map_outb_win(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rio_mport*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.tsi721_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.tsi721_obw_bar*, align 8
  %17 = alloca %struct.tsi721_ob_win*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %24 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %23, i32 0, i32 0
  %25 = load %struct.tsi721_device*, %struct.tsi721_device** %24, align 8
  store %struct.tsi721_device* %25, %struct.tsi721_device** %14, align 8
  store i32 -1, i32* %18, align 4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* @OBW, align 4
  %29 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %30 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %9, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32*, i8*, i32, i32, ...) @tsi_debug(i32 %28, i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @is_power_of_2(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %6
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 32768
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %41, %6
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %240

53:                                               ; preds = %44
  %54 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %55 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %240

61:                                               ; preds = %53
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %67 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %66, i32 0, i32 4
  %68 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tsi721_obw_bar, %struct.tsi721_obw_bar* %68, i64 %70
  %72 = getelementptr inbounds %struct.tsi721_obw_bar, %struct.tsi721_obw_bar* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %65
  %77 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %78 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %77, i32 0, i32 4
  %79 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.tsi721_obw_bar, %struct.tsi721_obw_bar* %79, i64 %81
  store %struct.tsi721_obw_bar* %82, %struct.tsi721_obw_bar** %16, align 8
  %83 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %84 = load %struct.tsi721_obw_bar*, %struct.tsi721_obw_bar** %16, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @tsi721_obw_alloc(%struct.tsi721_device* %83, %struct.tsi721_obw_bar* %84, i32 %85, i32* %18)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %95

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %62

95:                                               ; preds = %89, %62
  %96 = load i32, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %22, align 4
  store i32 %99, i32* %7, align 4
  br label %240

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = icmp eq i32 %101, -1
  %103 = zext i1 %102 to i32
  %104 = call i32 @WARN_ON(i32 %103)
  %105 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %106 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %105, i32 0, i32 3
  %107 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %107, i64 %109
  store %struct.tsi721_ob_win* %110, %struct.tsi721_ob_win** %17, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %17, align 8
  %113 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %17, align 8
  %116 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @OBW, align 4
  %118 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %119 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %17, align 8
  %124 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i32*, i8*, i32, i32, ...) @tsi_debug(i32 %117, i32* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @TSI721_PC2SR_ZONES, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %20, align 4
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %197, %100
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @TSI721_PC2SR_ZONES, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %200

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %146, %135
  %137 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %138 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TSI721_ZONE_SEL, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @ioread32(i64 %141)
  %143 = load i32, i32* @TSI721_ZONE_SEL_GO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = call i32 @udelay(i32 1)
  br label %136

148:                                              ; preds = %136
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* @TSI721_LUT_DATA0_ADD, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @TSI721_LUT_DATA0_NREAD, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @TSI721_LUT_DATA0_NWR, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %158 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TSI721_LUT_DATA0, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @iowrite32(i32 %156, i64 %161)
  %163 = load i32, i32* %20, align 4
  %164 = ashr i32 %163, 32
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %167 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TSI721_LUT_DATA1, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @iowrite32(i32 %165, i64 %170)
  %172 = load i8*, i8** %9, align 8
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %176 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TSI721_LUT_DATA2, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @iowrite32(i32 %174, i64 %179)
  %181 = load i32, i32* @TSI721_ZONE_SEL_GO, align 4
  %182 = load i32, i32* %18, align 4
  %183 = shl i32 %182, 3
  %184 = or i32 %181, %183
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %184, %185
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %189 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @TSI721_ZONE_SEL, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @iowrite32(i32 %187, i64 %192)
  %194 = load i32, i32* %21, align 4
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %20, align 4
  br label %197

197:                                              ; preds = %148
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  br label %131

200:                                              ; preds = %131
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @TSI721_OBWIN_SIZE(i32 %201)
  %203 = shl i32 %202, 8
  %204 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %205 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = call i64 @TSI721_OBWINSZ(i32 %207)
  %209 = add nsw i64 %206, %208
  %210 = call i32 @iowrite32(i32 %203, i64 %209)
  %211 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %17, align 8
  %212 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 32
  %215 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %216 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %18, align 4
  %219 = call i64 @TSI721_OBWINUB(i32 %218)
  %220 = add nsw i64 %217, %219
  %221 = call i32 @iowrite32(i32 %214, i64 %220)
  %222 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %17, align 8
  %223 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @TSI721_OBWINLB_BA, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* @TSI721_OBWINLB_WEN, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  %230 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %18, align 4
  %233 = call i64 @TSI721_OBWINLB(i32 %232)
  %234 = add nsw i64 %231, %233
  %235 = call i32 @iowrite32(i32 %228, i64 %234)
  %236 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %17, align 8
  %237 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %13, align 8
  store i32 %238, i32* %239, align 4
  store i32 0, i32* %7, align 4
  br label %240

240:                                              ; preds = %200, %98, %58, %50
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @tsi721_obw_alloc(%struct.tsi721_device*, %struct.tsi721_obw_bar*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @TSI721_OBWIN_SIZE(i32) #1

declare dso_local i64 @TSI721_OBWINSZ(i32) #1

declare dso_local i64 @TSI721_OBWINUB(i32) #1

declare dso_local i64 @TSI721_OBWINLB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
