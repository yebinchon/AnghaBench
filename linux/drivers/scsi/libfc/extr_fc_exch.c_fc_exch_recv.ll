; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i32, i32, i32, i32 }
%struct.fc_exch_mgr_anchor = type { i32 }

@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Receiving frames for an lport that has not been initialized correctly\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Unable to find Exchange Manager Anchor,fc_ctl <0x%x>, xid <0x%x>\0A\00", align 1
@FC_FC_EX_CTX = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@FC_FC_SEQ_CTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dropping invalid frame (eof %x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_exch_recv(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_frame_header*, align 8
  %6 = alloca %struct.fc_exch_mgr_anchor*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %8 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %9 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %8)
  store %struct.fc_frame_header* %9, %struct.fc_frame_header** %5, align 8
  %10 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %11 = icmp ne %struct.fc_lport* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %2
  %19 = call i32 @FC_LIBFC_DBG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %21 = call i32 @fc_frame_free(%struct.fc_frame* %20)
  br label %127

22:                                               ; preds = %12
  %23 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %24 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntoh24(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %30 = call %struct.fc_exch_mgr_anchor* @fc_find_ema(i32 %27, %struct.fc_lport* %28, %struct.fc_frame_header* %29)
  store %struct.fc_exch_mgr_anchor* %30, %struct.fc_exch_mgr_anchor** %6, align 8
  %31 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %32 = icmp ne %struct.fc_exch_mgr_anchor* %31, null
  br i1 %32, label %55, label %33

33:                                               ; preds = %22
  %34 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FC_FC_EX_CTX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %42 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %47 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %44, %40 ], [ %49, %45 ]
  %52 = call i32 (%struct.fc_lport*, i8*, i32, ...) @FC_LPORT_DBG(%struct.fc_lport* %34, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %51)
  %53 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %54 = call i32 @fc_frame_free(%struct.fc_frame* %53)
  br label %127

55:                                               ; preds = %22
  %56 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %57 = call i32 @fr_eof(%struct.fc_frame* %56)
  switch i32 %57, label %120 [
    i32 128, label %58
    i32 129, label %73
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @FC_FC_END_SEQ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %65 = call i32 @fp_skb(%struct.fc_frame* %64)
  %66 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %67 = call i64 @fr_len(%struct.fc_frame* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @FC_FC_FILL(i32 %68)
  %70 = sub nsw i64 %67, %69
  %71 = call i32 @skb_trim(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %63, %58
  br label %73

73:                                               ; preds = %55, %72
  %74 = load %struct.fc_frame_header*, %struct.fc_frame_header** %5, align 8
  %75 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FC_TYPE_BLS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %81 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %84 = call i32 @fc_exch_recv_bls(i32 %82, %struct.fc_frame* %83)
  br label %119

85:                                               ; preds = %73
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @FC_FC_EX_CTX, align 4
  %88 = load i32, i32* @FC_FC_SEQ_CTX, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = load i32, i32* @FC_FC_EX_CTX, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %95 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %98 = call i32 @fc_exch_recv_seq_resp(i32 %96, %struct.fc_frame* %97)
  br label %118

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @FC_FC_SEQ_CTX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %106 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %109 = call i32 @fc_exch_recv_resp(i32 %107, %struct.fc_frame* %108)
  br label %117

110:                                              ; preds = %99
  %111 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %112 = load %struct.fc_exch_mgr_anchor*, %struct.fc_exch_mgr_anchor** %6, align 8
  %113 = getelementptr inbounds %struct.fc_exch_mgr_anchor, %struct.fc_exch_mgr_anchor* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %116 = call i32 @fc_exch_recv_req(%struct.fc_lport* %111, i32 %114, %struct.fc_frame* %115)
  br label %117

117:                                              ; preds = %110, %104
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %79
  br label %127

120:                                              ; preds = %55
  %121 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %122 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %123 = call i32 @fr_eof(%struct.fc_frame* %122)
  %124 = call i32 (%struct.fc_lport*, i8*, i32, ...) @FC_LPORT_DBG(%struct.fc_lport* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %126 = call i32 @fc_frame_free(%struct.fc_frame* %125)
  br label %127

127:                                              ; preds = %18, %50, %120, %119
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @FC_LIBFC_DBG(i8*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local %struct.fc_exch_mgr_anchor* @fc_find_ema(i32, %struct.fc_lport*, %struct.fc_frame_header*) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @fr_eof(%struct.fc_frame*) #1

declare dso_local i32 @skb_trim(i32, i64) #1

declare dso_local i32 @fp_skb(%struct.fc_frame*) #1

declare dso_local i64 @fr_len(%struct.fc_frame*) #1

declare dso_local i64 @FC_FC_FILL(i32) #1

declare dso_local i32 @fc_exch_recv_bls(i32, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_recv_seq_resp(i32, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_recv_resp(i32, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_recv_req(%struct.fc_lport*, i32, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
