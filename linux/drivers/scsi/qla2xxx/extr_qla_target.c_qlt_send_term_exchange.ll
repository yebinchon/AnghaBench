; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_send_term_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_send_term_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { i32, %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.qla_tgt_cmd*)* }
%struct.qla_tgt_cmd = type { i64, i32, %struct.scsi_qla_host* }
%struct.atio_from_isp = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_qpair*, %struct.qla_tgt_cmd*, %struct.atio_from_isp*, i32, i32)* @qlt_send_term_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_send_term_exchange(%struct.qla_qpair* %0, %struct.qla_tgt_cmd* %1, %struct.atio_from_isp* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qla_qpair*, align 8
  %7 = alloca %struct.qla_tgt_cmd*, align 8
  %8 = alloca %struct.atio_from_isp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_qla_host*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qla_qpair* %0, %struct.qla_qpair** %6, align 8
  store %struct.qla_tgt_cmd* %1, %struct.qla_tgt_cmd** %7, align 8
  store %struct.atio_from_isp* %2, %struct.atio_from_isp** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %14 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %15 = icmp ne %struct.qla_tgt_cmd* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %17, i32 0, i32 2
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %18, align 8
  store %struct.scsi_qla_host* %19, %struct.scsi_qla_host** %11, align 8
  br label %24

20:                                               ; preds = %5
  %21 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %22 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %21, i32 0, i32 1
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %22, align 8
  store %struct.scsi_qla_host* %23, %struct.scsi_qla_host** %11, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %29 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %30 = load %struct.atio_from_isp*, %struct.atio_from_isp** %8, align 8
  %31 = call i32 @__qlt_send_term_exchange(%struct.qla_qpair* %28, %struct.qla_tgt_cmd* %29, %struct.atio_from_isp* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %11, align 8
  %38 = load %struct.atio_from_isp*, %struct.atio_from_isp** %8, align 8
  %39 = call i32 @qlt_alloc_qfull_cmd(%struct.scsi_qla_host* %37, %struct.atio_from_isp* %38, i32 0, i32 0)
  br label %40

40:                                               ; preds = %36, %27
  br label %60

41:                                               ; preds = %24
  %42 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %43 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @spin_lock_irqsave(i32 %44, i64 %45)
  %47 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %48 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %49 = load %struct.atio_from_isp*, %struct.atio_from_isp** %8, align 8
  %50 = call i32 @__qlt_send_term_exchange(%struct.qla_qpair* %47, %struct.qla_tgt_cmd* %48, %struct.atio_from_isp* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %11, align 8
  %57 = load %struct.atio_from_isp*, %struct.atio_from_isp** %8, align 8
  %58 = call i32 @qlt_alloc_qfull_cmd(%struct.scsi_qla_host* %56, %struct.atio_from_isp* %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %55, %41
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %62 = icmp ne %struct.qla_tgt_cmd* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %63
  %67 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %11, align 8
  %78 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %79 = call i32 @qlt_unmap_sg(%struct.scsi_qla_host* %77, %struct.qla_tgt_cmd* %78)
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %11, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.qla_tgt_cmd*)*, i32 (%struct.qla_tgt_cmd*)** %87, align 8
  %89 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %7, align 8
  %90 = call i32 %88(%struct.qla_tgt_cmd* %89)
  br label %91

91:                                               ; preds = %80, %66, %63, %60
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %96 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %94, %91
  ret void
}

declare dso_local i32 @__qlt_send_term_exchange(%struct.qla_qpair*, %struct.qla_tgt_cmd*, %struct.atio_from_isp*) #1

declare dso_local i32 @qlt_alloc_qfull_cmd(%struct.scsi_qla_host*, %struct.atio_from_isp*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @qlt_unmap_sg(%struct.scsi_qla_host*, %struct.qla_tgt_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
