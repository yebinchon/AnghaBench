; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_handle_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_handle_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iscsi_hdr = type { i32, i32 }
%struct.iscsi_reject = type { i32, i32, i32 }
%struct.iscsi_task = type { i32 }
%struct.iscsi_nopin = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Cannot handle rejected pdu. Invalid data length (pdu dlength %u, datalen %d\0A\00", align 1
@ISCSI_ERR_PROTO = common dso_local global i32 0, align 4
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"pdu (op 0x%x itt 0x%x) rejected due to DataDigest error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"pdu (op 0x%x itt 0x%x) rejected. Too many immediate commands.\0A\00", align 1
@ISCSI_OP_NOOP_OUT = common dso_local global i32 0, align 4
@ISCSI_RESERVED_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Invalid pdu reject. Could not lookup rejected task.\0A\00", align 1
@ISCSI_ERR_BAD_ITT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"pdu (op 0x%x itt 0x%x) rejected. Reason code 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32)* @iscsi_handle_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_handle_reject(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_reject*, align 8
  %11 = alloca %struct.iscsi_hdr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %16 = bitcast %struct.iscsi_hdr* %15 to %struct.iscsi_reject*
  store %struct.iscsi_reject* %16, %struct.iscsi_reject** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.iscsi_reject*, %struct.iscsi_reject** %10, align 8
  %18 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be32_to_cpu(i32 %19)
  %21 = add nsw i64 %20, 1
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.iscsi_reject*, %struct.iscsi_reject** %10, align 8
  %25 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntoh24(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load %struct.iscsi_reject*, %struct.iscsi_reject** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntoh24(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 8
  br i1 %36, label %37, label %47

37:                                               ; preds = %30, %4
  %38 = load i32, i32* @KERN_ERR, align 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %40 = load %struct.iscsi_reject*, %struct.iscsi_reject** %10, align 8
  %41 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntoh24(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %38, %struct.iscsi_conn* %39, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @ISCSI_ERR_PROTO, align 4
  store i32 %46, i32* %5, align 4
  br label %136

47:                                               ; preds = %30
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @memcpy(%struct.iscsi_hdr* %11, i8* %48, i32 8)
  %50 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.iscsi_reject*, %struct.iscsi_reject** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %123 [
    i32 129, label %57
    i32 128, label %64
  ]

57:                                               ; preds = %47
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %58, %struct.iscsi_conn* %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %62)
  br label %134

64:                                               ; preds = %47
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %65, %struct.iscsi_conn* %66, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ISCSI_OP_NOOP_OUT, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %136

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ISCSI_RESERVED_TAG, align 4
  %79 = call i32 @cpu_to_be32(i32 %78)
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %75
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %93 = bitcast %struct.iscsi_hdr* %11 to %struct.iscsi_nopin*
  %94 = call i32 @iscsi_send_nopout(%struct.iscsi_conn* %92, %struct.iscsi_nopin* %93)
  %95 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %96 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %101 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @spin_lock(i32* %103)
  br label %122

105:                                              ; preds = %75
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %107 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %106, i32 %108)
  store %struct.iscsi_task* %109, %struct.iscsi_task** %14, align 8
  %110 = load %struct.iscsi_task*, %struct.iscsi_task** %14, align 8
  %111 = icmp ne %struct.iscsi_task* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @KERN_ERR, align 4
  %114 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %115 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %113, %struct.iscsi_conn* %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ISCSI_ERR_BAD_ITT, align 4
  store i32 %116, i32* %13, align 4
  br label %121

117:                                              ; preds = %105
  %118 = load %struct.iscsi_task*, %struct.iscsi_task** %14, align 8
  %119 = bitcast %struct.iscsi_hdr* %11 to %struct.iscsi_nopin*
  %120 = call i32 @iscsi_nop_out_rsp(%struct.iscsi_task* %118, %struct.iscsi_nopin* %119, i32* null, i32 0)
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %81
  br label %134

123:                                              ; preds = %47
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %126 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iscsi_reject*, %struct.iscsi_reject** %10, align 8
  %131 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, %struct.iscsi_conn*, i8*, ...) @iscsi_conn_printk(i32 %124, %struct.iscsi_conn* %125, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %123, %122, %57
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %74, %37
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iscsi_send_nopout(%struct.iscsi_conn*, %struct.iscsi_nopin*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsi_nop_out_rsp(%struct.iscsi_task*, %struct.iscsi_nopin*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
