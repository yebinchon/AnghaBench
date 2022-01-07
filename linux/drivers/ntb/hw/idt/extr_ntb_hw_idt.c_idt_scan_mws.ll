; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_scan_mws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_scan_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.idt_ntb_bar* }
%struct.idt_ntb_bar = type { i32 }
%struct.idt_mw_cfg = type { i32, i8, i8, i32, i32, i32 }
%struct.idt_ntb_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IDT_MAX_NR_MWS = common dso_local global i32 0, align 4
@portdata_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@IDT_BAR_CNT = common dso_local global i8 0, align 1
@IDT_BARSETUP_EN = common dso_local global i32 0, align 4
@BARSETUP_TYPE = common dso_local global i32 0, align 4
@IDT_BARSETUP_MODE_CFG = common dso_local global i32 0, align 4
@BARSETUP_ATRAN = common dso_local global i32 0, align 4
@BARSETUP_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IDT_TRANS_ALIGN = common dso_local global i32 0, align 4
@IDT_MW_DIR = common dso_local global i32 0, align 4
@IDT_MW_LUT12 = common dso_local global i32 0, align 4
@IDT_DIR_SIZE_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idt_mw_cfg* (%struct.idt_ntb_dev*, i32, i8*)* @idt_scan_mws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idt_mw_cfg* @idt_scan_mws(%struct.idt_ntb_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.idt_mw_cfg*, align 8
  %5 = alloca %struct.idt_ntb_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.idt_mw_cfg*, align 8
  %11 = alloca %struct.idt_ntb_bar*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %20 = load i32, i32* @IDT_MAX_NR_MWS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca %struct.idt_mw_cfg, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @portdata_tbl, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %28, align 8
  store %struct.idt_ntb_bar* %29, %struct.idt_ntb_bar** %11, align 8
  %30 = load i8*, i8** %7, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %14, align 1
  br label %31

31:                                               ; preds = %169, %3
  %32 = load i8, i8* %14, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @IDT_BAR_CNT, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %176

37:                                               ; preds = %31
  %38 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %5, align 8
  %39 = load %struct.idt_ntb_bar*, %struct.idt_ntb_bar** %11, align 8
  %40 = load i8, i8* %14, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %39, i64 %41
  %43 = getelementptr inbounds %struct.idt_ntb_bar, %struct.idt_ntb_bar* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %38, i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @IDT_BARSETUP_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  br label %169

51:                                               ; preds = %37
  %52 = load i32, i32* @BARSETUP_TYPE, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @IS_FLD_SET(i32 %52, i32 %53, i32 64)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @IDT_BARSETUP_MODE_CFG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %169

60:                                               ; preds = %51
  %61 = load i32, i32* @BARSETUP_ATRAN, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @GET_FIELD(i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call zeroext i8 @idt_get_mw_count(i32 %64)
  store i8 %65, i8* %15, align 1
  %66 = load i32, i32* @BARSETUP_SIZE, align 4
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @GET_FIELD(i32 %66, i32 %67)
  %69 = shl i32 1, %68
  store i32 %69, i32* %17, align 4
  store i8 0, i8* %13, align 1
  br label %70

70:                                               ; preds = %162, %60
  %71 = load i8, i8* %13, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %15, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %168

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* @IDT_MAX_NR_MWS, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.idt_mw_cfg* @ERR_PTR(i32 %84)
  store %struct.idt_mw_cfg* %85, %struct.idt_mw_cfg** %4, align 8
  store i32 1, i32* %19, align 4
  br label %201

86:                                               ; preds = %76
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %90
  %92 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load i8, i8* %14, align 1
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %96
  %98 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %97, i32 0, i32 1
  store i8 %93, i8* %98, align 4
  %99 = load i8, i8* %13, align 1
  %100 = load i8*, i8** %7, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %102
  %104 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %103, i32 0, i32 2
  store i8 %99, i8* %104, align 1
  %105 = load i32, i32* @IDT_TRANS_ALIGN, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %108
  %110 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %109, i32 0, i32 5
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @IDT_MW_DIR, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %86
  %115 = load i32, i32* %17, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %118
  %120 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %119, i32 0, i32 3
  store i32 %115, i32* %120, align 4
  br label %142

121:                                              ; preds = %86
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @IDT_MW_LUT12, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* %17, align 4
  %127 = sdiv i32 %126, 16
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %130
  %132 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %131, i32 0, i32 3
  store i32 %127, i32* %132, align 4
  br label %141

133:                                              ; preds = %121
  %134 = load i32, i32* %17, align 4
  %135 = sdiv i32 %134, 32
  %136 = load i8*, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %138
  %140 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %139, i32 0, i32 3
  store i32 %135, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %125
  br label %142

142:                                              ; preds = %141, %114
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @IDT_MW_DIR, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @IDT_DIR_SIZE_ALIGN, align 4
  br label %155

148:                                              ; preds = %142
  %149 = load i8*, i8** %7, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %151
  %153 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  br label %155

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %147, %146 ], [ %154, %148 ]
  %157 = load i8*, i8** %7, align 8
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %23, i64 %159
  %161 = getelementptr inbounds %struct.idt_mw_cfg, %struct.idt_mw_cfg* %160, i32 0, i32 4
  store i32 %156, i32* %161, align 4
  br label %162

162:                                              ; preds = %155
  %163 = load i8, i8* %13, align 1
  %164 = add i8 %163, 1
  store i8 %164, i8* %13, align 1
  %165 = load i8*, i8** %7, align 8
  %166 = load i8, i8* %165, align 1
  %167 = add i8 %166, 1
  store i8 %167, i8* %165, align 1
  br label %70

168:                                              ; preds = %70
  br label %169

169:                                              ; preds = %168, %59, %50
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 1, %170
  %172 = load i8, i8* %14, align 1
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %173, %171
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %14, align 1
  br label %31

176:                                              ; preds = %31
  %177 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %5, align 8
  %178 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i8*, i8** %7, align 8
  %183 = load i8, i8* %182, align 1
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call %struct.idt_mw_cfg* @devm_kcalloc(i32* %181, i8 zeroext %183, i32 20, i32 %184)
  store %struct.idt_mw_cfg* %185, %struct.idt_mw_cfg** %10, align 8
  %186 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %10, align 8
  %187 = icmp ne %struct.idt_mw_cfg* %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %176
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  %191 = call %struct.idt_mw_cfg* @ERR_PTR(i32 %190)
  store %struct.idt_mw_cfg* %191, %struct.idt_mw_cfg** %4, align 8
  store i32 1, i32* %19, align 4
  br label %201

192:                                              ; preds = %176
  %193 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %10, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i64
  %197 = mul i64 %196, 20
  %198 = trunc i64 %197 to i8
  %199 = call i32 @memcpy(%struct.idt_mw_cfg* %193, %struct.idt_mw_cfg* %23, i8 zeroext %198)
  %200 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %10, align 8
  store %struct.idt_mw_cfg* %200, %struct.idt_mw_cfg** %4, align 8
  store i32 1, i32* %19, align 4
  br label %201

201:                                              ; preds = %192, %188, %82
  %202 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load %struct.idt_mw_cfg*, %struct.idt_mw_cfg** %4, align 8
  ret %struct.idt_mw_cfg* %203
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @idt_sw_read(%struct.idt_ntb_dev*, i32) #2

declare dso_local i32 @IS_FLD_SET(i32, i32, i32) #2

declare dso_local i32 @GET_FIELD(i32, i32) #2

declare dso_local zeroext i8 @idt_get_mw_count(i32) #2

declare dso_local %struct.idt_mw_cfg* @ERR_PTR(i32) #2

declare dso_local %struct.idt_mw_cfg* @devm_kcalloc(i32*, i8 zeroext, i32, i32) #2

declare dso_local i32 @memcpy(%struct.idt_mw_cfg*, %struct.idt_mw_cfg*, i8 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
