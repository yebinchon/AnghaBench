; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_readpda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_readpda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pdaloc = type { i32, i32 }
%struct.pdaloc.0 = type { i32, i32 }

@HFA3842_PDA_BASE = common dso_local global i32 0, align 4
@HFA3841_PDA_BASE = common dso_local global i32 0, align 4
@HFA3841_PDA_BOGUS_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Read from index %zd failed, continuing\0A\00", align 1
@HFA384x_PDR_LEN_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"pdrlen invalid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"pdrcode invalid=%d\0A\00", align 1
@HFA384x_PDR_END_OF_PDA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"PDA Read from 0x%08x in %s space.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"EXTDS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PHY\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ICSRAM\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"<bogus auxctl>\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Failure: pda is not okay\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_readpda(%struct.hfa384x* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hfa384x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x %struct.pdaloc], align 16
  store %struct.hfa384x* %0, %struct.hfa384x** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 0
  %21 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %20, i32 0, i32 0
  %22 = load i32, i32* @HFA3842_PDA_BASE, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %20, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %20, i64 1
  %25 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %24, i32 0, i32 0
  %26 = load i32, i32* @HFA3841_PDA_BASE, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %24, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %24, i64 1
  %29 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %28, i32 0, i32 0
  %30 = load i32, i32* @HFA3841_PDA_BOGUS_BASE, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %28, i32 0, i32 1
  store i32 0, i32* %31, align 4
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %183, %3
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 0
  %35 = bitcast %struct.pdaloc* %34 to %struct.pdaloc.0*
  %36 = call i64 @ARRAY_SIZE(%struct.pdaloc.0* %35)
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %186

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @HFA384x_ADDR_CMD_MKPAGE(i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @HFA384x_ADDR_CMD_MKOFF(i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @hfa384x_dormem(%struct.hfa384x* %49, i32 %50, i32 %51, i8* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %38
  %58 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %59 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @netdev_warn(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %183

65:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %133, %65
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i1 [ false, %66 ], [ %71, %69 ]
  br i1 %73, label %74, label %134

74:                                               ; preds = %72
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = mul nsw i32 %80, 2
  store i32 %81, i32* %13, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @HFA384x_PDR_LEN_MAX, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92, %74
  %96 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %97 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @netdev_err(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  store i32 0, i32* %9, align 4
  br label %134

103:                                              ; preds = %92
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @hfa384x_isgood_pdrcode(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %109 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @netdev_err(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  store i32 0, i32* %9, align 4
  br label %134

115:                                              ; preds = %103
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @HFA384x_PDR_END_OF_PDA, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16_to_cpu(i32 %128)
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %123, %120
  br label %66

134:                                              ; preds = %107, %95, %72
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %182

137:                                              ; preds = %134
  %138 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %139 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %137
  br label %179

153:                                              ; preds = %137
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %177

160:                                              ; preds = %153
  %161 = load i64, i64* %12, align 8
  %162 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %175

167:                                              ; preds = %160
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds [3 x %struct.pdaloc], [3 x %struct.pdaloc]* %17, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.pdaloc, %struct.pdaloc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 3
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)
  br label %175

175:                                              ; preds = %167, %166
  %176 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %166 ], [ %174, %167 ]
  br label %177

177:                                              ; preds = %175, %159
  %178 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %159 ], [ %176, %175 ]
  br label %179

179:                                              ; preds = %177, %152
  %180 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %152 ], [ %178, %177 ]
  %181 = call i32 @netdev_info(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %146, i8* %180)
  br label %186

182:                                              ; preds = %134
  br label %183

183:                                              ; preds = %182, %57
  %184 = load i64, i64* %12, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %12, align 8
  br label %32

186:                                              ; preds = %179, %32
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %193

190:                                              ; preds = %186
  %191 = load i32, i32* @ENODATA, align 4
  %192 = sub nsw i32 0, %191
  br label %193

193:                                              ; preds = %190, %189
  %194 = phi i32 [ 0, %189 ], [ %192, %190 ]
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %193
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i64 @ARRAY_SIZE(%struct.pdaloc.0*) #1

declare dso_local i32 @HFA384x_ADDR_CMD_MKPAGE(i32) #1

declare dso_local i32 @HFA384x_ADDR_CMD_MKOFF(i32) #1

declare dso_local i32 @hfa384x_dormem(%struct.hfa384x*, i32, i32, i8*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @hfa384x_isgood_pdrcode(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
