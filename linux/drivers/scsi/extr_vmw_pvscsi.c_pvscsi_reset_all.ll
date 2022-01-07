; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_reset_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, %struct.pvscsi_ctx* }
%struct.pvscsi_ctx = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Forced reset on cmd %p\0A\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*)* @pvscsi_reset_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_reset_all(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvscsi_ctx*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %13, i32 0, i32 1
  %15 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %15, i64 %17
  store %struct.pvscsi_ctx* %18, %struct.pvscsi_ctx** %4, align 8
  %19 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %19, i32 0, i32 0
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %20, align 8
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %5, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = icmp ne %struct.scsi_cmnd* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %12
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %28 = call i32 @scmd_printk(i32 %25, %struct.scsi_cmnd* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %27)
  %29 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %30 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %31 = call i32 @pvscsi_unmap_buffers(%struct.pvscsi_adapter* %29, %struct.pvscsi_ctx* %30)
  %32 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %33 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %34 = call i32 @pvscsi_release_context(%struct.pvscsi_adapter* %32, %struct.pvscsi_ctx* %33)
  %35 = load i32, i32* @DID_RESET, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 1
  %41 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %40, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %43 = call i32 %41(%struct.scsi_cmnd* %42)
  br label %44

44:                                               ; preds = %24, %12
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %6

48:                                               ; preds = %6
  ret void
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @pvscsi_unmap_buffers(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*) #1

declare dso_local i32 @pvscsi_release_context(%struct.pvscsi_adapter*, %struct.pvscsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
