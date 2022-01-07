; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_nop_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_nop_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_cmd = type { i8, i8*, i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.iscsi_nopout = type { i64, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Receiving %u additional bytes for padding.\0A\00", align 1
@ISCSI_CRC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Ping data CRC32C DataDigest 0x%08x does not match computed 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Unable to recover from NOPOUT Ping DataCRC failure while in ERL=0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Dropping NOPOUT Command CmdSN: 0x%08x due to DataCRC error.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Got CRC32C DataDigest 0x%08x for %u bytes of ping data.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Got %u bytes of NOPOUT ping data.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Ping Data: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*)* @iscsit_handle_nop_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_nop_out(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iscsi_nopout*, align 8
  %10 = alloca %struct.kvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.iscsi_nopout*
  store %struct.iscsi_nopout* %20, %struct.iscsi_nopout** %9, align 8
  store %struct.kvec* null, %struct.kvec** %10, align 8
  %21 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %9, align 8
  %22 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ntoh24(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %9, align 8
  %28 = call i32 @iscsit_setup_nop_out(%struct.iscsi_conn* %25, %struct.iscsi_cmd* %26, %struct.iscsi_nopout* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %213

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %198

35:                                               ; preds = %32
  %36 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %9, align 8
  %37 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @cpu_to_be32(i32 -1)
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %198

41:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 -1, i32* %12, align 4
  br label %203

50:                                               ; preds = %41
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 3
  %53 = load %struct.kvec*, %struct.kvec** %52, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i64 0
  store %struct.kvec* %54, %struct.kvec** %10, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.kvec*, %struct.kvec** %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %56, i64 %58
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.kvec*, %struct.kvec** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i64 %65
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  store i32 %61, i32* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 0, %68
  %70 = and i32 %69, 3
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %50
  %74 = load i32, i32* %15, align 4
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %76, i32 0, i32 0
  %78 = load %struct.kvec*, %struct.kvec** %10, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.kvec, %struct.kvec* %78, i64 %80
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  store i8* %77, i8** %82, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.kvec*, %struct.kvec** %10, align 8
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.kvec, %struct.kvec* %84, i64 %87
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i32 0, i32 1
  store i32 %83, i32* %89, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %73, %50
  %94 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %95 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %93
  %101 = bitcast i32* %13 to i8*
  %102 = load %struct.kvec*, %struct.kvec** %10, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.kvec, %struct.kvec* %102, i64 %104
  %106 = getelementptr inbounds %struct.kvec, %struct.kvec* %105, i32 0, i32 0
  store i8* %101, i8** %106, align 8
  %107 = load i32, i32* @ISCSI_CRC_LEN, align 4
  %108 = load %struct.kvec*, %struct.kvec** %10, align 8
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.kvec, %struct.kvec* %108, i64 %111
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %112, i32 0, i32 1
  store i32 %107, i32* %113, align 8
  %114 = load i32, i32* @ISCSI_CRC_LEN, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %100, %93
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %120 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %119, i32 0, i32 3
  %121 = load %struct.kvec*, %struct.kvec** %120, align 8
  %122 = call i32 @ARRAY_SIZE(%struct.kvec* %121)
  %123 = icmp sgt i32 %118, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @WARN_ON_ONCE(i32 %124)
  %126 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %127 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %128 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %127, i32 0, i32 3
  %129 = load %struct.kvec*, %struct.kvec** %128, align 8
  %130 = getelementptr inbounds %struct.kvec, %struct.kvec* %129, i64 0
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @rx_data(%struct.iscsi_conn* %126, %struct.kvec* %130, i32 %131, i32 %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  store i32 -1, i32* %12, align 4
  br label %203

138:                                              ; preds = %117
  %139 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %140 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %183

145:                                              ; preds = %138
  %146 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %147 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %153 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %152, i32 0, i32 0
  %154 = load i8, i8* %153, align 8
  %155 = call i32 @iscsit_do_crypto_hash_buf(i32 %148, i8* %149, i32 %150, i32 %151, i8 zeroext %154, i32* %14)
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %145
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %164 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %159
  %172 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %203

173:                                              ; preds = %159
  %174 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %9, align 8
  %175 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %176)
  store i32 0, i32* %12, align 4
  br label %203

178:                                              ; preds = %145
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182, %138
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load i8*, i8** %8, align 8
  %189 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %190 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %193 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %183, %35, %32
  %199 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %200 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %201 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %9, align 8
  %202 = call i32 @iscsit_process_nop_out(%struct.iscsi_conn* %199, %struct.iscsi_cmd* %200, %struct.iscsi_nopout* %201)
  store i32 %202, i32* %4, align 4
  br label %213

203:                                              ; preds = %173, %171, %137, %49
  %204 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %205 = icmp ne %struct.iscsi_cmd* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %208 = call i32 @iscsit_free_cmd(%struct.iscsi_cmd* %207, i32 0)
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i8*, i8** %8, align 8
  %211 = call i32 @kfree(i8* %210)
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %209, %198, %31
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iscsit_setup_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_nopout*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvec*) #1

declare dso_local i32 @rx_data(%struct.iscsi_conn*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @iscsit_do_crypto_hash_buf(i32, i8*, i32, i32, i8 zeroext, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_process_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_nopout*) #1

declare dso_local i32 @iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
