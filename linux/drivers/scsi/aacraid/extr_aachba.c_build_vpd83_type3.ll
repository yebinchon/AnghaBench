; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_build_vpd83_type3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_build_vpd83_type3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvpd_page83 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.aac_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tvpd_page83*, %struct.aac_dev*, %struct.scsi_cmnd*)* @build_vpd83_type3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_vpd83_type3(%struct.tvpd_page83* %0, %struct.aac_dev* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.tvpd_page83*, align 8
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  store %struct.tvpd_page83* %0, %struct.tvpd_page83** %4, align 8
  store %struct.aac_dev* %1, %struct.aac_dev** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %8 = load %struct.tvpd_page83*, %struct.tvpd_page83** %4, align 8
  %9 = getelementptr inbounds %struct.tvpd_page83, %struct.tvpd_page83* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.tvpd_page83*, %struct.tvpd_page83** %4, align 8
  %12 = getelementptr inbounds %struct.tvpd_page83, %struct.tvpd_page83* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 3, i32* %13, align 4
  %14 = load %struct.tvpd_page83*, %struct.tvpd_page83** %4, align 8
  %15 = getelementptr inbounds %struct.tvpd_page83, %struct.tvpd_page83* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 12, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %43, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %20 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %25 = call i32 @scmd_id(%struct.scsi_cmnd* %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.tvpd_page83*, %struct.tvpd_page83** %4, align 8
  %30 = getelementptr inbounds %struct.tvpd_page83, %struct.tvpd_page83* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %34 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %32, i32 %40, i32 16)
  br label %46

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %17

46:                                               ; preds = %28, %17
  ret void
}

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
