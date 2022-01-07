; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_xmit_datain_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_xmit_datain_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.iscsi_cmd = type { i32, i64, i64, i32, i32*, i64, %struct.kvec*, i32* }
%struct.kvec = type { i64, i32* }
%struct.iscsi_datain = type { i64, i32 }

@ISCSI_HDR_LEN = common dso_local global i64 0, align 8
@ISCSI_CRC_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Attaching CRC32 HeaderDigest for DataIN PDU 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Attaching %u padding bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Attached CRC32C DataDigest %d bytes, crc 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_datain*)* @iscsit_xmit_datain_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_xmit_datain_pdu(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_datain* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_datain*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_datain* %2, %struct.iscsi_datain** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 6
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  %17 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i64 0
  store %struct.kvec* %17, %struct.kvec** %8, align 8
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.kvec*, %struct.kvec** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i64 %22
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 1
  store i32* %20, i32** %24, align 8
  %25 = load i64, i64* @ISCSI_HDR_LEN, align 8
  %26 = load %struct.kvec*, %struct.kvec** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i64 %27
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i32 0, i32 0
  store i64 %25, i64* %30, align 8
  %31 = load i64, i64* @ISCSI_HDR_LEN, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %10, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %3
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @ISCSI_HDR_LEN, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = bitcast i32* %45 to i64*
  store i64* %46, i64** %13, align 8
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @ISCSI_HDR_LEN, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = call i32 @iscsit_do_crypto_hash_buf(i32 %49, i32* %52, i64 %53, i32 0, i32* null, i64* %54)
  %56 = load i64, i64* @ISCSI_CRC_LEN, align 8
  %57 = load %struct.kvec*, %struct.kvec** %8, align 8
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i64 0
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %56
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* @ISCSI_CRC_LEN, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %40, %3
  %69 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 6
  %72 = load %struct.kvec*, %struct.kvec** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i64 %73
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 2
  %80 = sub i64 %77, %79
  %81 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %82 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %85 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @iscsit_map_iovec(%struct.iscsi_cmd* %69, %struct.kvec* %74, i64 %80, i32 %83, i64 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %216

91:                                               ; preds = %68
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %9, align 8
  %96 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %97 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %102 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 0, %103
  %105 = and i64 %104, 3
  %106 = trunc i64 %105 to i32
  %107 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %91
  %114 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %115 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.kvec*, %struct.kvec** %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.kvec, %struct.kvec* %117, i64 %118
  %120 = getelementptr inbounds %struct.kvec, %struct.kvec* %119, i32 0, i32 1
  store i32* %116, i32** %120, align 8
  %121 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %122 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = load %struct.kvec*, %struct.kvec** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %9, align 8
  %128 = getelementptr inbounds %struct.kvec, %struct.kvec* %125, i64 %126
  %129 = getelementptr inbounds %struct.kvec, %struct.kvec* %128, i32 0, i32 0
  store i64 %124, i64* %129, align 8
  %130 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %131 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %10, align 8
  %136 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %137 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %113, %91
  %142 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %143 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %141
  %149 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %150 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %153 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %154 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %157 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %161 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %165 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @iscsit_do_crypto_hash_sg(i32 %151, %struct.iscsi_cmd* %152, i32 %155, i32 %159, i64 %163, i32* %166)
  %168 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %169 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %171 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %170, i32 0, i32 3
  %172 = load %struct.kvec*, %struct.kvec** %8, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds %struct.kvec, %struct.kvec* %172, i64 %173
  %175 = getelementptr inbounds %struct.kvec, %struct.kvec* %174, i32 0, i32 1
  store i32* %171, i32** %175, align 8
  %176 = load i64, i64* @ISCSI_CRC_LEN, align 8
  %177 = load %struct.kvec*, %struct.kvec** %8, align 8
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %9, align 8
  %180 = getelementptr inbounds %struct.kvec, %struct.kvec* %177, i64 %178
  %181 = getelementptr inbounds %struct.kvec, %struct.kvec* %180, i32 0, i32 0
  store i64 %176, i64* %181, align 8
  %182 = load i64, i64* @ISCSI_CRC_LEN, align 8
  %183 = load i64, i64* %10, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %10, align 8
  %185 = load %struct.iscsi_datain*, %struct.iscsi_datain** %7, align 8
  %186 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %189 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = add i64 %187, %191
  %193 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %194 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %192, i32 %195)
  br label %197

197:                                              ; preds = %148, %141
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %200 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %199, i32 0, i32 1
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* %10, align 8
  %202 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %203 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %205 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %206 = call i32 @iscsit_fe_sendpage_sg(%struct.iscsi_cmd* %204, %struct.iscsi_conn* %205)
  store i32 %206, i32* %11, align 4
  %207 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %208 = call i32 @iscsit_unmap_iovec(%struct.iscsi_cmd* %207)
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %197
  %212 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %213 = call i32 @iscsit_tx_thread_wait_for_tcp(%struct.iscsi_conn* %212)
  %214 = load i32, i32* %11, align 4
  store i32 %214, i32* %4, align 4
  br label %216

215:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %211, %90
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @iscsit_do_crypto_hash_buf(i32, i32*, i64, i32, i32*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @iscsit_map_iovec(%struct.iscsi_cmd*, %struct.kvec*, i64, i32, i64) #1

declare dso_local i32 @iscsit_do_crypto_hash_sg(i32, %struct.iscsi_cmd*, i32, i32, i64, i32*) #1

declare dso_local i32 @iscsit_fe_sendpage_sg(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_unmap_iovec(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_tx_thread_wait_for_tcp(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
