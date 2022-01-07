; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_is_fnic_fip_flogi_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_is_fnic_fip_flogi_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.fip_header = type { i64, i32, i32 }
%struct.fc_frame_header = type { i32 }
%struct.fip_desc = type { i64, i64 }
%struct.fip_encaps = type { i32 }

@FIP_OP_LS = common dso_local global i64 0, align 8
@FIP_SC_REP = common dso_local global i64 0, align 8
@FIP_BPW = common dso_local global i64 0, align 8
@FIP_DT_FLOGI = common dso_local global i64 0, align 8
@ELS_LS_RJT = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Flogi Request Rejected by Switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Flogi Request Accepted by Switch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)* @is_fnic_fip_flogi_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_fnic_fip_flogi_reject(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fcoe_ctlr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fip_header*, align 8
  %8 = alloca %struct.fc_frame_header*, align 8
  %9 = alloca %struct.fip_desc*, align 8
  %10 = alloca %struct.fip_encaps*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %19 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %18, i32 0, i32 0
  %20 = load %struct.fc_lport*, %struct.fc_lport** %19, align 8
  store %struct.fc_lport* %20, %struct.fc_lport** %6, align 8
  store %struct.fc_frame_header* null, %struct.fc_frame_header** %8, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_linearize(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %123

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.fip_header*
  store %struct.fip_header* %36, %struct.fip_header** %7, align 8
  %37 = load %struct.fip_header*, %struct.fip_header** %7, align 8
  %38 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %12, align 8
  %42 = load %struct.fip_header*, %struct.fip_header** %7, align 8
  %43 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @FIP_OP_LS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %123

49:                                               ; preds = %32
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @FIP_SC_REP, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %123

54:                                               ; preds = %49
  %55 = load %struct.fip_header*, %struct.fip_header** %7, align 8
  %56 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohs(i32 %57)
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = add i64 %61, 16
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ugt i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %123

69:                                               ; preds = %54
  %70 = load %struct.fip_header*, %struct.fip_header** %7, align 8
  %71 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %70, i64 1
  %72 = bitcast %struct.fip_header* %71 to %struct.fip_desc*
  store %struct.fip_desc* %72, %struct.fip_desc** %9, align 8
  %73 = load %struct.fip_desc*, %struct.fip_desc** %9, align 8
  %74 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FIP_BPW, align 8
  %77 = mul i64 %75, %76
  store i64 %77, i64* %17, align 8
  %78 = load %struct.fip_desc*, %struct.fip_desc** %9, align 8
  %79 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FIP_DT_FLOGI, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %69
  %84 = load i64, i64* %17, align 8
  %85 = icmp ult i64 %84, 9
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %123

87:                                               ; preds = %83
  %88 = load i64, i64* %17, align 8
  %89 = sub i64 %88, 4
  store i64 %89, i64* %15, align 8
  %90 = load %struct.fip_desc*, %struct.fip_desc** %9, align 8
  %91 = bitcast %struct.fip_desc* %90 to %struct.fip_encaps*
  store %struct.fip_encaps* %91, %struct.fip_encaps** %10, align 8
  %92 = load %struct.fip_encaps*, %struct.fip_encaps** %10, align 8
  %93 = getelementptr inbounds %struct.fip_encaps, %struct.fip_encaps* %92, i64 1
  %94 = bitcast %struct.fip_encaps* %93 to %struct.fc_frame_header*
  store %struct.fc_frame_header* %94, %struct.fc_frame_header** %8, align 8
  %95 = load %struct.fip_desc*, %struct.fip_desc** %9, align 8
  %96 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %100 = icmp ne %struct.fc_frame_header* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %123

102:                                              ; preds = %87
  %103 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %104 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %103, i64 1
  %105 = bitcast %struct.fc_frame_header* %104 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @ELS_LS_RJT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i32, i32* @KERN_INFO, align 4
  %112 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %113 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @shost_printk(i32 %111, i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %123

116:                                              ; preds = %102
  %117 = load i32, i32* @KERN_INFO, align 4
  %118 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %119 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @shost_printk(i32 %117, i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %116, %69
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %110, %101, %86, %68, %53, %48, %31, %24
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
