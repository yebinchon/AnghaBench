; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_sym53c500_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_sym53c500_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__**, %struct.scsi_info_t* }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_info_t = type { i32 }

@MANFID_MACNICA = common dso_local global i32 0, align 4
@MANFID_PIONEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @sym53c500_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c500_resume(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.scsi_info_t*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.scsi_info_t*, %struct.scsi_info_t** %5, align 8
  store %struct.scsi_info_t* %6, %struct.scsi_info_t** %3, align 8
  %7 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MANFID_MACNICA, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MANFID_PIONEER, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.scsi_info_t*, %struct.scsi_info_t** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_info_t, %struct.scsi_info_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 152
  br i1 %22, label %23, label %51

23:                                               ; preds = %18, %12, %1
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 13
  %32 = call i32 @outb(i32 128, i64 %31)
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 9
  %41 = call i32 @outb(i32 36, i64 %40)
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 13
  %50 = call i32 @outb(i32 4, i64 %49)
  br label %51

51:                                               ; preds = %23, %18
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @SYM53C500_int_host_reset(i64 %58)
  ret i32 0
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @SYM53C500_int_host_reset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
