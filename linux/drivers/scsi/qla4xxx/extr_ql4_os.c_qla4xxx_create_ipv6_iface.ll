; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_create_ipv6_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_create_ipv6_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i8*, i32, i8* }

@qla4xxx_iscsi_transport = common dso_local global i32 0, align 4
@ISCSI_IFACE_TYPE_IPV6 = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not create IPv6 iSCSI iface0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not create IPv6 iSCSI iface1.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4xxx_create_ipv6_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_create_ipv6_iface(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ISCSI_IFACE_TYPE_IPV6, align 4
  %12 = call i8* @iscsi_create_iface(i32 %10, i32* @qla4xxx_iscsi_transport, i32 %11, i32 0, i32 0)
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %23 = call i32 @ql4_printk(i32 %21, %struct.scsi_qla_host* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ISCSI_IFACE_TYPE_IPV6, align 4
  %34 = call i8* @iscsi_create_iface(i32 %32, i32* @qla4xxx_iscsi_transport, i32 %33, i32 1, i32 0)
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = call i32 @ql4_printk(i32 %43, %struct.scsi_qla_host* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %37
  ret void
}

declare dso_local i8* @iscsi_create_iface(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
