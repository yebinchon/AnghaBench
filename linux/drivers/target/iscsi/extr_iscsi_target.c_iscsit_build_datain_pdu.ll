; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_datain_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_datain_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.iscsi_conn = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_datain = type { i32, i32, i32, i32 }
%struct.iscsi_data_rsp = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i32 }
%struct.scsi_lun = type { i32 }

@ISCSI_OP_SCSI_DATA_IN = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_OVERFLOW = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_UNDERFLOW = common dso_local global i32 0, align 4
@ISCSI_FLAG_DATA_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"Built DataIN ITT: 0x%08x, StatSN: 0x%08x, DataSN: 0x%08x, Offset: %u, Length: %u, CID: %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_build_datain_pdu(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, %struct.iscsi_datain* %2, %struct.iscsi_data_rsp* %3, i32 %4) #0 {
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_datain*, align 8
  %9 = alloca %struct.iscsi_data_rsp*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_datain* %2, %struct.iscsi_datain** %8, align 8
  store %struct.iscsi_data_rsp* %3, %struct.iscsi_data_rsp** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @ISCSI_OP_SCSI_DATA_IN, align 4
  %12 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %13 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load %struct.iscsi_datain*, %struct.iscsi_datain** %8, align 8
  %15 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %18 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %20 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %5
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load i32, i32* @ISCSI_FLAG_DATA_OVERFLOW, align 4
  %35 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %36 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %45 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  br label %68

46:                                               ; preds = %25
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load i32, i32* @ISCSI_FLAG_DATA_UNDERFLOW, align 4
  %56 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %57 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %66 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %65, i32 0, i32 10
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %54, %46
  br label %68

68:                                               ; preds = %67, %33
  br label %69

69:                                               ; preds = %68, %5
  %70 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %71 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.iscsi_datain*, %struct.iscsi_datain** %8, align 8
  %74 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hton24(i32 %72, i32 %75)
  %77 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %78 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %69
  %84 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %85 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %89 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %88, i32 0, i32 8
  %90 = bitcast i32* %89 to %struct.scsi_lun*
  %91 = call i32 @int_to_scsilun(i32 %87, %struct.scsi_lun* %90)
  br label %96

92:                                               ; preds = %69
  %93 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %94 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %93, i32 0, i32 8
  %95 = call i32 @put_unaligned_le64(i32 -1, i32* %94)
  br label %96

96:                                               ; preds = %92, %83
  %97 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %98 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %101 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 8
  %102 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %103 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ISCSI_FLAG_DATA_ACK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %96
  %109 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_be32(i32 %111)
  %113 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %114 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  br label %119

115:                                              ; preds = %96
  %116 = call i8* @cpu_to_be32(i32 -1)
  %117 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %118 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %128 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  br label %133

129:                                              ; preds = %119
  %130 = call i8* @cpu_to_be32(i32 -1)
  %131 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %132 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %122
  %134 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %135 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %141 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %143 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = call i64 @atomic_read(i32* %145)
  %147 = trunc i64 %146 to i32
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %150 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  %151 = load %struct.iscsi_datain*, %struct.iscsi_datain** %8, align 8
  %152 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @cpu_to_be32(i32 %153)
  %155 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %156 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.iscsi_datain*, %struct.iscsi_datain** %8, align 8
  %158 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_be32(i32 %159)
  %161 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %162 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %164 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %167 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @ntohl(i8* %168)
  %170 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %171 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @ntohl(i8* %172)
  %174 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %9, align 8
  %175 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @ntohl(i8* %176)
  %178 = load %struct.iscsi_datain*, %struct.iscsi_datain** %8, align 8
  %179 = getelementptr inbounds %struct.iscsi_datain, %struct.iscsi_datain* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %182 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @pr_debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %169, i32 %173, i32 %177, i32 %180, i32 %183)
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
