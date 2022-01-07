; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_send_recv_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_send_recv_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8, i64, i32 }
%struct.st95hf_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.param_list = type { i32, i8 }

@MAX_CMD_LEN = common dso_local global i32 0, align 4
@cmd_array = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ST95HF_COMMAND_SEND = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [38 x i8] c"st95hf_spi_send failed with error %d\0A\00", align 1
@SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"spi error from st95hf_spi_recv_response(), err = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"st95hf error from st95hf_spi_recv_response(), err = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st95hf_context*, i32, i32, %struct.param_list*, i32)* @st95hf_send_recv_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_send_recv_cmd(%struct.st95hf_context* %0, i32 %1, i32 %2, %struct.param_list* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st95hf_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.param_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [2 x i8], align 1
  store %struct.st95hf_context* %0, %struct.st95hf_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.param_list* %3, %struct.param_list** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @MAX_CMD_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.st95hf_context*, %struct.st95hf_context** %7, align 8
  %24 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %16, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAX_CMD_LEN, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

39:                                               ; preds = %5
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.param_list*, %struct.param_list** %10, align 8
  %56 = icmp ne %struct.param_list* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

60:                                               ; preds = %54, %51
  %61 = load i8, i8* @ST95HF_COMMAND_SEND, align 1
  %62 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %61, i8* %62, align 16
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i8, i8* %67, align 8
  %69 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %68, i8* %69, align 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %76, i8* %77, align 2
  %78 = getelementptr inbounds i8, i8* %22, i64 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds i8, i8* %22, i64 2
  %86 = load i8, i8* %85, align 2
  %87 = call i32 @memcpy(i8* %78, i32 %84, i8 zeroext %86)
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %125, %60
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load %struct.param_list*, %struct.param_list** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.param_list, %struct.param_list* %93, i64 %95
  %97 = getelementptr inbounds %struct.param_list, %struct.param_list* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %98, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

109:                                              ; preds = %92
  %110 = load %struct.param_list*, %struct.param_list** %10, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.param_list, %struct.param_list* %110, i64 %112
  %114 = getelementptr inbounds %struct.param_list, %struct.param_list* %113, i32 0, i32 1
  %115 = load i8, i8* %114, align 4
  %116 = load %struct.param_list*, %struct.param_list** %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.param_list, %struct.param_list* %116, i64 %118
  %120 = getelementptr inbounds %struct.param_list, %struct.param_list* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 3, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %22, i64 %123
  store i8 %115, i8* %124, align 1
  br label %125

125:                                              ; preds = %109
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %88

128:                                              ; preds = %88
  %129 = load %struct.st95hf_context*, %struct.st95hf_context** %7, align 8
  %130 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @st95hf_spi_send(%struct.TYPE_6__* %130, i8* %22, i32 %136, i64 %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %128
  %147 = load %struct.device*, %struct.device** %16, align 8
  %148 = load i32, i32* %15, align 4
  %149 = trunc i32 %148 to i8
  %150 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %149)
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

152:                                              ; preds = %128
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cmd_array, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SYNC, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %152
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %161
  %165 = load %struct.st95hf_context*, %struct.st95hf_context** %7, align 8
  %166 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %168 = call i32 @st95hf_spi_recv_response(%struct.TYPE_6__* %166, i8* %167)
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load %struct.device*, %struct.device** %16, align 8
  %173 = load i32, i32* %15, align 4
  %174 = trunc i32 %173 to i8
  %175 = call i32 @dev_err(%struct.device* %172, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %174)
  %176 = load i32, i32* %15, align 4
  store i32 %176, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

177:                                              ; preds = %164
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load %struct.device*, %struct.device** %16, align 8
  %183 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = call i32 @dev_err(%struct.device* %182, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %184)
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

188:                                              ; preds = %177
  br label %189

189:                                              ; preds = %188, %161, %152
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %190

190:                                              ; preds = %189, %181, %171, %146, %106, %57, %48, %36
  %191 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %6, align 4
  ret i32 %192
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i8 zeroext) #2

declare dso_local i32 @st95hf_spi_send(%struct.TYPE_6__*, i8*, i32, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i8 zeroext) #2

declare dso_local i32 @st95hf_spi_recv_response(%struct.TYPE_6__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
