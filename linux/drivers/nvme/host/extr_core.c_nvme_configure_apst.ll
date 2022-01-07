; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_configure_apst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_configure_apst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nvme_feat_auto_pst = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"NPSS is invalid; not using APST\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"APST disabled\0A\00", align 1
@NVME_QUIRK_NO_DEEPEST_PS = common dso_local global i32 0, align 4
@NVME_PS_FLAGS_NON_OP_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"APST enabled but no non-operational states are available\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"APST enabled: max PS = %d, max round-trip latency = %lluus, table = %*phN\0A\00", align 1
@NVME_FEAT_AUTO_PST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to set APST feature (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_configure_apst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_configure_apst(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_feat_auto_pst*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

19:                                               ; preds = %1
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %189

29:                                               ; preds = %19
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.nvme_feat_auto_pst* @kzalloc(i32 8, i32 %30)
  store %struct.nvme_feat_auto_pst* %31, %struct.nvme_feat_auto_pst** %5, align 8
  %32 = load %struct.nvme_feat_auto_pst*, %struct.nvme_feat_auto_pst** %5, align 8
  %33 = icmp ne %struct.nvme_feat_auto_pst* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %189

35:                                               ; preds = %29
  %36 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %35
  store i32 0, i32* %4, align 4
  %46 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %171

50:                                               ; preds = %40
  %51 = call i32 @cpu_to_le64(i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %151, %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %154

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.nvme_feat_auto_pst*, %struct.nvme_feat_auto_pst** %5, align 8
  %64 = getelementptr inbounds %struct.nvme_feat_auto_pst, %struct.nvme_feat_auto_pst* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %77 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NVME_QUIRK_NO_DEEPEST_PS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %151

83:                                               ; preds = %75, %69
  %84 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %85 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NVME_PS_FLAGS_NON_OP_STATE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %151

96:                                               ; preds = %83
  %97 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %98 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @le32_to_cpu(i32 %104)
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %108 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  br label %151

112:                                              ; preds = %96
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %115 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @le32_to_cpu(i32 %121)
  %123 = add nsw i64 %113, %122
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 19
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @do_div(i64 %126, i32 20)
  %128 = load i64, i64* %13, align 8
  %129 = icmp sgt i64 %128, 16777215
  br i1 %129, label %130, label %131

130:                                              ; preds = %112
  store i64 16777215, i64* %13, align 8
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i32, i32* %10, align 4
  %133 = shl i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %13, align 8
  %136 = shl i64 %135, 8
  %137 = or i64 %134, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 @cpu_to_le64(i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %131
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %6, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i64, i64* %11, align 8
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %148, %144
  br label %151

151:                                              ; preds = %150, %111, %95, %82
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %10, align 4
  br label %55

154:                                              ; preds = %55
  store i32 1, i32* %4, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %159 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %170

162:                                              ; preds = %154
  %163 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %164 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i64, i64* %6, align 8
  %168 = load %struct.nvme_feat_auto_pst*, %struct.nvme_feat_auto_pst** %5, align 8
  %169 = call i32 (i32, i8*, ...) @dev_dbg(i32 %165, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %166, i64 %167, i32 8, %struct.nvme_feat_auto_pst* %168)
  br label %170

170:                                              ; preds = %162, %157
  br label %171

171:                                              ; preds = %170, %45
  %172 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %173 = load i32, i32* @NVME_FEAT_AUTO_PST, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.nvme_feat_auto_pst*, %struct.nvme_feat_auto_pst** %5, align 8
  %176 = call i32 @nvme_set_features(%struct.nvme_ctrl* %172, i32 %173, i32 %174, %struct.nvme_feat_auto_pst* %175, i32 8, i32* null)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %181 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @dev_err(i32 %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %179, %171
  %186 = load %struct.nvme_feat_auto_pst*, %struct.nvme_feat_auto_pst** %5, align 8
  %187 = call i32 @kfree(%struct.nvme_feat_auto_pst* %186)
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %34, %24, %18
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.nvme_feat_auto_pst* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @nvme_set_features(%struct.nvme_ctrl*, i32, i32, %struct.nvme_feat_auto_pst*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.nvme_feat_auto_pst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
