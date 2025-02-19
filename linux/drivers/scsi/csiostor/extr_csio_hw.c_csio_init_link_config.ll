; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_init_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_init_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_config = type { i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64 }

@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@ADVERT_MASK = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_config*, i8*, i8*)* @csio_init_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_init_link_config(%struct.link_config* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.link_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.link_config* %0, %struct.link_config** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.link_config*, %struct.link_config** %4, align 8
  %10 = getelementptr inbounds %struct.link_config, %struct.link_config* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.link_config*, %struct.link_config** %4, align 8
  %13 = getelementptr inbounds %struct.link_config, %struct.link_config* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load %struct.link_config*, %struct.link_config** %4, align 8
  %15 = getelementptr inbounds %struct.link_config, %struct.link_config* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.link_config*, %struct.link_config** %4, align 8
  %17 = getelementptr inbounds %struct.link_config, %struct.link_config* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load %struct.link_config*, %struct.link_config** %4, align 8
  %19 = getelementptr inbounds %struct.link_config, %struct.link_config* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @PAUSE_RX, align 4
  %21 = load i32, i32* @PAUSE_TX, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.link_config*, %struct.link_config** %4, align 8
  %24 = getelementptr inbounds %struct.link_config, %struct.link_config* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.link_config*, %struct.link_config** %4, align 8
  %26 = getelementptr inbounds %struct.link_config, %struct.link_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.link_config*, %struct.link_config** %4, align 8
  %29 = getelementptr inbounds %struct.link_config, %struct.link_config* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @FEC_AUTO, align 4
  %31 = load %struct.link_config*, %struct.link_config** %4, align 8
  %32 = getelementptr inbounds %struct.link_config, %struct.link_config* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.link_config*, %struct.link_config** %4, align 8
  %34 = getelementptr inbounds %struct.link_config, %struct.link_config* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @fwcap_to_cc_fec(i8* %35)
  %37 = load %struct.link_config*, %struct.link_config** %4, align 8
  %38 = getelementptr inbounds %struct.link_config, %struct.link_config* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.link_config*, %struct.link_config** %4, align 8
  %40 = getelementptr inbounds %struct.link_config, %struct.link_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %3
  %46 = load %struct.link_config*, %struct.link_config** %4, align 8
  %47 = getelementptr inbounds %struct.link_config, %struct.link_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ADVERT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.link_config*, %struct.link_config** %4, align 8
  %52 = getelementptr inbounds %struct.link_config, %struct.link_config* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @AUTONEG_ENABLE, align 4
  %54 = load %struct.link_config*, %struct.link_config** %4, align 8
  %55 = getelementptr inbounds %struct.link_config, %struct.link_config* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @PAUSE_AUTONEG, align 4
  %57 = load %struct.link_config*, %struct.link_config** %4, align 8
  %58 = getelementptr inbounds %struct.link_config, %struct.link_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %67

61:                                               ; preds = %3
  %62 = load %struct.link_config*, %struct.link_config** %4, align 8
  %63 = getelementptr inbounds %struct.link_config, %struct.link_config* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* @AUTONEG_DISABLE, align 4
  %65 = load %struct.link_config*, %struct.link_config** %4, align 8
  %66 = getelementptr inbounds %struct.link_config, %struct.link_config* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %45
  ret void
}

declare dso_local i32 @fwcap_to_cc_fec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
