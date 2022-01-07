; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.scsi_info_t* }
%struct.scsi_info_t = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"SYM53C500_release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @SYM53C500_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SYM53C500_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.scsi_info_t*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 1
  %7 = load %struct.scsi_info_t*, %struct.scsi_info_t** %6, align 8
  store %struct.scsi_info_t* %7, %struct.scsi_info_t** %3, align 8
  %8 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call i32 @scsi_remove_host(%struct.Scsi_Host* %14)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = call i32 @free_irq(i64 %23, %struct.Scsi_Host* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @release_region(i64 %39, i64 %42)
  br label %44

44:                                               ; preds = %36, %31, %26
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %46 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %45)
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = call i32 @scsi_host_put(%struct.Scsi_Host* %47)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i64, %struct.Scsi_Host*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
