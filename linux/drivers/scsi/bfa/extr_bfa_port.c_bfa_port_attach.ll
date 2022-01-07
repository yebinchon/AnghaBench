; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_port_s = type { i32, %struct.bfa_ioc_s*, %struct.TYPE_3__, i8*, i8*, i32*, i32*, i8*, i8*, %struct.bfa_trc_mod_s*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_ioc_s = type { i32 }
%struct.bfa_trc_mod_s = type { i32 }

@BFA_FALSE = common dso_local global i8* null, align 8
@BFI_MC_PORT = common dso_local global i32 0, align 4
@bfa_port_isr = common dso_local global i32 0, align 4
@bfa_port_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_port_attach(%struct.bfa_port_s* %0, %struct.bfa_ioc_s* %1, i8* %2, %struct.bfa_trc_mod_s* %3) #0 {
  %5 = alloca %struct.bfa_port_s*, align 8
  %6 = alloca %struct.bfa_ioc_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bfa_trc_mod_s*, align 8
  store %struct.bfa_port_s* %0, %struct.bfa_port_s** %5, align 8
  store %struct.bfa_ioc_s* %1, %struct.bfa_ioc_s** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.bfa_trc_mod_s* %3, %struct.bfa_trc_mod_s** %8, align 8
  %9 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %10 = icmp ne %struct.bfa_port_s* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %15, i32 0, i32 10
  store i8* %14, i8** %16, align 8
  %17 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %6, align 8
  %18 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %18, i32 0, i32 1
  store %struct.bfa_ioc_s* %17, %struct.bfa_ioc_s** %19, align 8
  %20 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %8, align 8
  %21 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %21, i32 0, i32 9
  store %struct.bfa_trc_mod_s* %20, %struct.bfa_trc_mod_s** %22, align 8
  %23 = load i8*, i8** @BFA_FALSE, align 8
  %24 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @BFA_FALSE, align 8
  %27 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %29, i32 0, i32 6
  store i32* null, i32** %30, align 8
  %31 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load i8*, i8** @BFA_FALSE, align 8
  %34 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @BFA_FALSE, align 8
  %37 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %39, i32 0, i32 1
  %41 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %40, align 8
  %42 = load i32, i32* @BFI_MC_PORT, align 4
  %43 = load i32, i32* @bfa_port_isr, align 4
  %44 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %45 = call i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s* %41, i32 %42, i32 %43, %struct.bfa_port_s* %44)
  %46 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %46, i32 0, i32 2
  %48 = call i32 @bfa_q_qe_init(%struct.TYPE_3__* %47)
  %49 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %49, i32 0, i32 2
  %51 = load i32, i32* @bfa_port_notify, align 4
  %52 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %53 = call i32 @bfa_ioc_notify_init(%struct.TYPE_3__* %50, i32 %51, %struct.bfa_port_s* %52)
  %54 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %57, i32 0, i32 1
  %59 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %58, align 8
  %60 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %59, i32 0, i32 0
  %61 = call i32 @list_add_tail(i32* %56, i32* %60)
  %62 = call i32 (...) @ktime_get_seconds()
  %63 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %66 = call i32 @bfa_trc(%struct.bfa_port_s* %65, i32 0)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioc_mbox_regisr(%struct.bfa_ioc_s*, i32, i32, %struct.bfa_port_s*) #1

declare dso_local i32 @bfa_q_qe_init(%struct.TYPE_3__*) #1

declare dso_local i32 @bfa_ioc_notify_init(%struct.TYPE_3__*, i32, %struct.bfa_port_s*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @bfa_trc(%struct.bfa_port_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
