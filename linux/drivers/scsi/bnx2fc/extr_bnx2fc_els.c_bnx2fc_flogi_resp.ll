; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_flogi_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_flogi_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fcoe_ctlr = type { i32 (%struct.fc_lport*, i32*)*, %struct.TYPE_3__* }
%struct.fc_lport = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.fc_exch = type { %struct.fc_lport.0* }
%struct.fc_lport.0 = type { i32 }
%struct.fc_frame_header = type { i32* }
%struct.TYPE_4__ = type { i32* }

@BNX2FC_FCOE_MAC_METHOD_GRANGED_MAC = common dso_local global i32 0, align 4
@BNX2FC_FCOE_MAC_METHOD_FCF_MAP = common dso_local global i32 0, align 4
@BNX2FC_FCOE_MAC_METHOD_FCOE_SET_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"fcoe_mac=%pM method=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @bnx2fc_flogi_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_flogi_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fcoe_ctlr*, align 8
  %8 = alloca %struct.fc_exch*, align 8
  %9 = alloca %struct.fc_lport.0*, align 8
  %10 = alloca %struct.fc_frame_header*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.fcoe_ctlr*
  store %struct.fcoe_ctlr* %16, %struct.fcoe_ctlr** %7, align 8
  %17 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %18 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %17)
  store %struct.fc_exch* %18, %struct.fc_exch** %8, align 8
  %19 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  %20 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %19, i32 0, i32 0
  %21 = load %struct.fc_lport.0*, %struct.fc_lport.0** %20, align 8
  store %struct.fc_lport.0* %21, %struct.fc_lport.0** %9, align 8
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i64 @IS_ERR(%struct.fc_frame* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %109

26:                                               ; preds = %3
  %27 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %28 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %27)
  store %struct.fc_frame_header* %28, %struct.fc_frame_header** %10, align 8
  %29 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %30 = call %struct.TYPE_4__* @fr_cb(%struct.fc_frame* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @is_zero_ether_addr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @ether_addr_copy(i32* %37, i32* %38)
  %40 = load i32, i32* @BNX2FC_FCOE_MAC_METHOD_GRANGED_MAC, align 4
  store i32 %40, i32* %14, align 4
  br label %97

41:                                               ; preds = %26
  %42 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %43 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %89

46:                                               ; preds = %41
  %47 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %48 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %46
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %55 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %56 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @hton24(i32* %54, i64 %59)
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 %62, i32* %63, align 16
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %71 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  store i32 %74, i32* %75, align 4
  %76 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %77 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 4
  store i32 %80, i32* %81, align 16
  %82 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %83 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @BNX2FC_FCOE_MAC_METHOD_FCF_MAP, align 4
  store i32 %88, i32* %14, align 4
  br label %96

89:                                               ; preds = %46, %41
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %91 = load %struct.fc_frame_header*, %struct.fc_frame_header** %10, align 8
  %92 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @fc_fcoe_set_mac(i32* %90, i32* %93)
  %95 = load i32, i32* @BNX2FC_FCOE_MAC_METHOD_FCOE_SET_MAC, align 4
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %89, %53
  br label %97

97:                                               ; preds = %96, %36
  %98 = load %struct.fc_lport.0*, %struct.fc_lport.0** %9, align 8
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @BNX2FC_HBA_DBG(%struct.fc_lport.0* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %99, i32 %100)
  %102 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %103 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %102, i32 0, i32 0
  %104 = load i32 (%struct.fc_lport*, i32*)*, i32 (%struct.fc_lport*, i32*)** %103, align 8
  %105 = load %struct.fc_lport.0*, %struct.fc_lport.0** %9, align 8
  %106 = bitcast %struct.fc_lport.0* %105 to %struct.fc_lport*
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %108 = call i32 %104(%struct.fc_lport* %106, i32* %107)
  br label %109

109:                                              ; preds = %97, %25
  %110 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %111 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %112 = load %struct.fc_lport.0*, %struct.fc_lport.0** %9, align 8
  %113 = call i32 @fc_lport_flogi_resp(%struct.fc_seq* %110, %struct.fc_frame* %111, %struct.fc_lport.0* %112)
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.TYPE_4__* @fr_cb(%struct.fc_frame*) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @hton24(i32*, i64) #1

declare dso_local i32 @fc_fcoe_set_mac(i32*, i32*) #1

declare dso_local i32 @BNX2FC_HBA_DBG(%struct.fc_lport.0*, i8*, i32*, i32) #1

declare dso_local i32 @fc_lport_flogi_resp(%struct.fc_seq*, %struct.fc_frame*, %struct.fc_lport.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
