; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_text_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_text_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_cmd = type { i8* }
%struct.iscsi_text = type { i32, i32 }
%struct.kvec = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Receiving %u additional bytes for padding.\0A\00", align 1
@ISCSI_CRC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Text data CRC32C DataDigest 0x%08x does not match computed 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Unable to recover from Text Data digest failure while in ERL=0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Dropping Text Command CmdSN: 0x%08x due to DataCRC error.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Got CRC32C DataDigest 0x%08x for %u bytes of text data.\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Successfully read %d bytes of text data.\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*)* @iscsit_handle_text_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_text_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_text*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x %struct.kvec], align 16
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.iscsi_text*
  store %struct.iscsi_text* %20, %struct.iscsi_text** %8, align 8
  store i8* null, i8** %9, align 8
  %21 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %22 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntoh24(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %28 = call i32 @iscsit_setup_text_cmd(%struct.iscsi_conn* %25, %struct.iscsi_cmd* %26, %struct.iscsi_text* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %175

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %159

36:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 4)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 %39, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %164

45:                                               ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 0
  %50 = call i32 @memset(%struct.kvec* %49, i32 0, i32 32)
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 16
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = load i32, i32* %15, align 4
  %69 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %45
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %72 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = bitcast i32* %13 to i8*
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 16
  %83 = load i32, i32* @ISCSI_CRC_LEN, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.kvec, %struct.kvec* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 8
  %89 = load i32, i32* @ISCSI_CRC_LEN, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %77, %70
  %93 = load i32, i32* %16, align 4
  %94 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 0
  %95 = call i32 @ARRAY_SIZE(%struct.kvec* %94)
  %96 = icmp sgt i32 %93, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON_ONCE(i32 %97)
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %100 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 0
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @rx_data(%struct.iscsi_conn* %99, %struct.kvec* %100, i32 %101, i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %92
  br label %164

108:                                              ; preds = %92
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %110 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %108
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %117 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @iscsit_do_crypto_hash_buf(i32 %118, i8* %119, i32 %120, i32 0, i32* null, i32* %14)
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %115
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %130 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %164

139:                                              ; preds = %125
  %140 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %141 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @kfree(i8* %144)
  store i32 0, i32* %4, align 4
  br label %175

146:                                              ; preds = %115
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %146
  br label %151

151:                                              ; preds = %150, %108
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %151, %32
  %160 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %161 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %162 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %163 = call i32 @iscsit_process_text_cmd(%struct.iscsi_conn* %160, %struct.iscsi_cmd* %161, %struct.iscsi_text* %162)
  store i32 %163, i32* %4, align 4
  br label %175

164:                                              ; preds = %137, %107, %44
  %165 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %166 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @kfree(i8* %167)
  %169 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %170 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %169, i32 0, i32 0
  store i8* null, i8** %170, align 8
  %171 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %172 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %171, i32 %172, i8* %173)
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %164, %159, %139, %31
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iscsit_setup_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_text*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.kvec*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvec*) #1

declare dso_local i32 @rx_data(%struct.iscsi_conn*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @iscsit_do_crypto_hash_buf(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @iscsit_process_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_text*) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
