; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_writev_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_writev_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32, i64, %struct.cifs_writedata* }
%struct.cifs_writedata = type { i64, i32, i32, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32 }
%struct.smb2_write_rsp = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cifs_credits = type { i32, i8* }

@ENOSPC = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@SMB2_WRITE_HE = common dso_local global i32 0, align 4
@cifsiod_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mid_q_entry*)* @smb2_writev_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb2_writev_callback(%struct.mid_q_entry* %0) #0 {
  %2 = alloca %struct.mid_q_entry*, align 8
  %3 = alloca %struct.cifs_writedata*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb2_write_rsp*, align 8
  %8 = alloca %struct.cifs_credits, align 8
  store %struct.mid_q_entry* %0, %struct.mid_q_entry** %2, align 8
  %9 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %10 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %9, i32 0, i32 2
  %11 = load %struct.cifs_writedata*, %struct.cifs_writedata** %10, align 8
  store %struct.cifs_writedata* %11, %struct.cifs_writedata** %3, align 8
  %12 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %13 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cifs_tcon* @tlink_tcon(i32 %16)
  store %struct.cifs_tcon* %17, %struct.cifs_tcon** %4, align 8
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %19 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  store %struct.TCP_Server_Info* %22, %struct.TCP_Server_Info** %5, align 8
  %23 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %24 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.smb2_write_rsp*
  store %struct.smb2_write_rsp* %26, %struct.smb2_write_rsp** %7, align 8
  %27 = bitcast %struct.cifs_credits* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 16, i1 false)
  %28 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %29 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %97 [
    i32 129, label %31
    i32 131, label %81
    i32 128, label %81
    i32 130, label %86
  ]

31:                                               ; preds = %1
  %32 = load %struct.smb2_write_rsp*, %struct.smb2_write_rsp** %7, align 8
  %33 = getelementptr inbounds %struct.smb2_write_rsp, %struct.smb2_write_rsp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %8, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %39 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %44 = call i64 @smb2_check_receive(%struct.mid_q_entry* %42, %struct.TCP_Server_Info* %43, i32 0)
  %45 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %46 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %48 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %102

52:                                               ; preds = %31
  %53 = load %struct.smb2_write_rsp*, %struct.smb2_write_rsp** %7, align 8
  %54 = getelementptr inbounds %struct.smb2_write_rsp, %struct.smb2_write_rsp* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %59 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 65535
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %68 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64, i64* @ENOSPC, align 8
  %73 = sub nsw i64 0, %72
  %74 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %75 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %80

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %79 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %71
  br label %102

81:                                               ; preds = %1, %1
  %82 = load i64, i64* @EAGAIN, align 8
  %83 = sub nsw i64 0, %82
  %84 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %85 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %102

86:                                               ; preds = %1
  %87 = load %struct.smb2_write_rsp*, %struct.smb2_write_rsp** %7, align 8
  %88 = getelementptr inbounds %struct.smb2_write_rsp, %struct.smb2_write_rsp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le16_to_cpu(i32 %90)
  %92 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %8, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %94 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %8, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  br label %97

97:                                               ; preds = %1, %86
  %98 = load i64, i64* @EIO, align 8
  %99 = sub nsw i64 0, %98
  %100 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %101 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %81, %80, %51
  %103 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %104 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %102
  %108 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %109 = load i32, i32* @SMB2_WRITE_HE, align 4
  %110 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %108, i32 %109)
  %111 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %112 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %111, i32 0, i32 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %118 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %121 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %126 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %129 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %132 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @trace_smb3_write_err(i32 0, i32 %116, i32 %119, i32 %124, i32 %127, i32 %130, i64 %133)
  br label %157

135:                                              ; preds = %102
  %136 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %137 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %136, i32 0, i32 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %143 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %146 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %151 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %154 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @trace_smb3_write_done(i32 0, i32 %141, i32 %144, i32 %149, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %135, %107
  %158 = load i32, i32* @cifsiod_wq, align 4
  %159 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  %160 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %159, i32 0, i32 2
  %161 = call i32 @queue_work(i32 %158, i32* %160)
  %162 = load %struct.mid_q_entry*, %struct.mid_q_entry** %2, align 8
  %163 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %162)
  %164 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %165 = call i32 @add_credits(%struct.TCP_Server_Info* %164, %struct.cifs_credits* %8, i32 0)
  ret void
}

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @smb2_check_receive(%struct.mid_q_entry*, %struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #1

declare dso_local i32 @trace_smb3_write_err(i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @trace_smb3_write_done(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

declare dso_local i32 @add_credits(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
