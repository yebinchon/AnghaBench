; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_flogi_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_flogi_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.fc_exch = type { %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fcoe_flogi_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_flogi_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fcoe_ctlr*, align 8
  %8 = alloca %struct.fc_exch*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca i32*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fcoe_ctlr*
  store %struct.fcoe_ctlr* %12, %struct.fcoe_ctlr** %7, align 8
  %13 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %14 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %13)
  store %struct.fc_exch* %14, %struct.fc_exch** %8, align 8
  %15 = load %struct.fc_exch*, %struct.fc_exch** %8, align 8
  %16 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %15, i32 0, i32 0
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %9, align 8
  %18 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %19 = call i64 @IS_ERR(%struct.fc_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %24 = call %struct.TYPE_2__* @fr_cb(%struct.fc_frame* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i64 @is_zero_ether_addr(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %33 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %34 = call i32 @fcoe_ctlr_recv_flogi(%struct.fcoe_ctlr* %31, %struct.fc_lport* %32, %struct.fc_frame* %33)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @is_zero_ether_addr(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @fcoe_update_src_mac(%struct.fc_lport* %40, i32* %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %46 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %47 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %48 = call i32 @fc_lport_flogi_resp(%struct.fc_seq* %45, %struct.fc_frame* %46, %struct.fc_lport* %47)
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local %struct.TYPE_2__* @fr_cb(%struct.fc_frame*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @fcoe_ctlr_recv_flogi(%struct.fcoe_ctlr*, %struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i32 @fcoe_update_src_mac(%struct.fc_lport*, i32*) #1

declare dso_local i32 @fc_lport_flogi_resp(%struct.fc_seq*, %struct.fc_frame*, %struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
