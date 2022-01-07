; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_pwr_reg_rdwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_pwr_reg_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i64, i32* }

@ipcdev = common dso_local global %struct.intel_scu_ipc_dev zeroinitializer, align 8
@IPC_WWBUF_SIZE = common dso_local global i32 0, align 4
@ipclock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPC_CMD_PCNTRL_R = common dso_local global i32 0, align 4
@IPC_CMD_PCNTRL_W = common dso_local global i32 0, align 4
@IPC_CMD_PCNTRL_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @pwr_reg_rdwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwr_reg_rdwr(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_scu_ipc_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.intel_scu_ipc_dev* @ipcdev, %struct.intel_scu_ipc_dev** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @IPC_WWBUF_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i32* %23, i32** %18, align 8
  %24 = mul nuw i64 4, %21
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %23, i32 0, i32 %25)
  %27 = call i32 @mutex_lock(i32* @ipclock)
  %28 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %29 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = call i32 @mutex_unlock(i32* @ipclock)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %218

36:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %23, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %23, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %14, align 4
  br label %37

65:                                               ; preds = %37
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @IPC_CMD_PCNTRL_R, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @ipc_data_writel(%struct.intel_scu_ipc_dev* %75, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %14, align 4
  br label %70

88:                                               ; preds = %70
  %89 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 2
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %93, 12
  %95 = or i32 %92, %94
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ipc_command(%struct.intel_scu_ipc_dev* %89, i32 %97)
  br label %184

99:                                               ; preds = %65
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @IPC_CMD_PCNTRL_W, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %152

103:                                              ; preds = %99
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %117, %103
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %23, i64 %115
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %104

122:                                              ; preds = %104
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %136, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @ipc_data_writel(%struct.intel_scu_ipc_dev* %128, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %14, align 4
  br label %123

141:                                              ; preds = %123
  %142 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %143, 3
  %145 = shl i32 %144, 16
  %146 = load i32, i32* %11, align 4
  %147 = shl i32 %146, 12
  %148 = or i32 %145, %147
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @ipc_command(%struct.intel_scu_ipc_dev* %142, i32 %150)
  br label %183

152:                                              ; preds = %99
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @IPC_CMD_PCNTRL_M, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %23, i64 %161
  store i32 %159, i32* %162, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %23, i64 %168
  store i32 %165, i32* %169, align 4
  %170 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %171 = load i32*, i32** %18, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ipc_data_writel(%struct.intel_scu_ipc_dev* %170, i32 %173, i32 0)
  %175 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %176 = load i32, i32* %11, align 4
  %177 = shl i32 %176, 12
  %178 = or i32 262144, %177
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @ipc_command(%struct.intel_scu_ipc_dev* %175, i32 %180)
  br label %182

182:                                              ; preds = %156, %152
  br label %183

183:                                              ; preds = %182, %141
  br label %184

184:                                              ; preds = %183, %88
  %185 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %186 = call i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %215, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @IPC_CMD_PCNTRL_R, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %215

193:                                              ; preds = %189
  %194 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %195 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 144
  %198 = call i32 @memcpy_fromio(i32* %23, i64 %197, i32 16)
  store i32 0, i32* %13, align 4
  br label %199

199:                                              ; preds = %211, %193
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %199
  %204 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %12, align 8
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @ipc_data_readb(%struct.intel_scu_ipc_dev* %204, i32 %205)
  %207 = load i32*, i32** %8, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %206, i32* %210, align 4
  br label %211

211:                                              ; preds = %203
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %199

214:                                              ; preds = %199
  br label %215

215:                                              ; preds = %214, %189, %184
  %216 = call i32 @mutex_unlock(i32* @ipclock)
  %217 = load i32, i32* %15, align 4
  store i32 %217, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %218

218:                                              ; preds = %215, %32
  %219 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ipc_data_writel(%struct.intel_scu_ipc_dev*, i32, i32) #2

declare dso_local i32 @ipc_command(%struct.intel_scu_ipc_dev*, i32) #2

declare dso_local i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev*) #2

declare dso_local i32 @memcpy_fromio(i32*, i64, i32) #2

declare dso_local i32 @ipc_data_readb(%struct.intel_scu_ipc_dev*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
