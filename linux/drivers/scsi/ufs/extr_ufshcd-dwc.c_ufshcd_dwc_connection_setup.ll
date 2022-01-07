; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd-dwc.c_ufshcd_dwc_connection_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd-dwc.c_ufshcd_dwc_connection_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufshcd_dme_attr_val = type { i32, i32, i32 }

@T_CONNECTIONSTATE = common dso_local global i32 0, align 4
@DME_LOCAL = common dso_local global i32 0, align 4
@N_DEVICEID = common dso_local global i32 0, align 4
@N_DEVICEID_VALID = common dso_local global i32 0, align 4
@T_PEERDEVICEID = common dso_local global i32 0, align 4
@T_PEERCPORTID = common dso_local global i32 0, align 4
@T_TRAFFICCLASS = common dso_local global i32 0, align 4
@T_CPORTFLAGS = common dso_local global i32 0, align 4
@T_CPORTMODE = common dso_local global i32 0, align 4
@DME_PEER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_dwc_connection_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_dwc_connection_setup(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca [18 x %struct.ufshcd_dme_attr_val], align 16
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %4 = getelementptr inbounds [18 x %struct.ufshcd_dme_attr_val], [18 x %struct.ufshcd_dme_attr_val]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %4, i32 0, i32 0
  %6 = load i32, i32* @T_CONNECTIONSTATE, align 4
  %7 = call i32 @UIC_ARG_MIB(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %4, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %4, i32 0, i32 2
  %10 = load i32, i32* @DME_LOCAL, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %4, i64 1
  %12 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %11, i32 0, i32 0
  %13 = load i32, i32* @N_DEVICEID, align 4
  %14 = call i32 @UIC_ARG_MIB(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %11, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %11, i32 0, i32 2
  %17 = load i32, i32* @DME_LOCAL, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %11, i64 1
  %19 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %18, i32 0, i32 0
  %20 = load i32, i32* @N_DEVICEID_VALID, align 4
  %21 = call i32 @UIC_ARG_MIB(i32 %20)
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %18, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %18, i32 0, i32 2
  %24 = load i32, i32* @DME_LOCAL, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %18, i64 1
  %26 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %25, i32 0, i32 0
  %27 = load i32, i32* @T_PEERDEVICEID, align 4
  %28 = call i32 @UIC_ARG_MIB(i32 %27)
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %25, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %25, i32 0, i32 2
  %31 = load i32, i32* @DME_LOCAL, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %25, i64 1
  %33 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %32, i32 0, i32 0
  %34 = load i32, i32* @T_PEERCPORTID, align 4
  %35 = call i32 @UIC_ARG_MIB(i32 %34)
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %32, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %32, i32 0, i32 2
  %38 = load i32, i32* @DME_LOCAL, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %32, i64 1
  %40 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %39, i32 0, i32 0
  %41 = load i32, i32* @T_TRAFFICCLASS, align 4
  %42 = call i32 @UIC_ARG_MIB(i32 %41)
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %39, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %39, i32 0, i32 2
  %45 = load i32, i32* @DME_LOCAL, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %39, i64 1
  %47 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %46, i32 0, i32 0
  %48 = load i32, i32* @T_CPORTFLAGS, align 4
  %49 = call i32 @UIC_ARG_MIB(i32 %48)
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %46, i32 0, i32 1
  store i32 6, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %46, i32 0, i32 2
  %52 = load i32, i32* @DME_LOCAL, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %46, i64 1
  %54 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %53, i32 0, i32 0
  %55 = load i32, i32* @T_CPORTMODE, align 4
  %56 = call i32 @UIC_ARG_MIB(i32 %55)
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %53, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %53, i32 0, i32 2
  %59 = load i32, i32* @DME_LOCAL, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %53, i64 1
  %61 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %60, i32 0, i32 0
  %62 = load i32, i32* @T_CONNECTIONSTATE, align 4
  %63 = call i32 @UIC_ARG_MIB(i32 %62)
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %60, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %60, i32 0, i32 2
  %66 = load i32, i32* @DME_LOCAL, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %60, i64 1
  %68 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %67, i32 0, i32 0
  %69 = load i32, i32* @T_CONNECTIONSTATE, align 4
  %70 = call i32 @UIC_ARG_MIB(i32 %69)
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %67, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %67, i32 0, i32 2
  %73 = load i32, i32* @DME_PEER, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %67, i64 1
  %75 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %74, i32 0, i32 0
  %76 = load i32, i32* @N_DEVICEID, align 4
  %77 = call i32 @UIC_ARG_MIB(i32 %76)
  store i32 %77, i32* %75, align 4
  %78 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %74, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %74, i32 0, i32 2
  %80 = load i32, i32* @DME_PEER, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %74, i64 1
  %82 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %81, i32 0, i32 0
  %83 = load i32, i32* @N_DEVICEID_VALID, align 4
  %84 = call i32 @UIC_ARG_MIB(i32 %83)
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %81, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %81, i32 0, i32 2
  %87 = load i32, i32* @DME_PEER, align 4
  store i32 %87, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %81, i64 1
  %89 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %88, i32 0, i32 0
  %90 = load i32, i32* @T_PEERDEVICEID, align 4
  %91 = call i32 @UIC_ARG_MIB(i32 %90)
  store i32 %91, i32* %89, align 4
  %92 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %88, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %88, i32 0, i32 2
  %94 = load i32, i32* @DME_PEER, align 4
  store i32 %94, i32* %93, align 4
  %95 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %88, i64 1
  %96 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %95, i32 0, i32 0
  %97 = load i32, i32* @T_PEERCPORTID, align 4
  %98 = call i32 @UIC_ARG_MIB(i32 %97)
  store i32 %98, i32* %96, align 4
  %99 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %95, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %95, i32 0, i32 2
  %101 = load i32, i32* @DME_PEER, align 4
  store i32 %101, i32* %100, align 4
  %102 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %95, i64 1
  %103 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %102, i32 0, i32 0
  %104 = load i32, i32* @T_TRAFFICCLASS, align 4
  %105 = call i32 @UIC_ARG_MIB(i32 %104)
  store i32 %105, i32* %103, align 4
  %106 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %102, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %102, i32 0, i32 2
  %108 = load i32, i32* @DME_PEER, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %102, i64 1
  %110 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %109, i32 0, i32 0
  %111 = load i32, i32* @T_CPORTFLAGS, align 4
  %112 = call i32 @UIC_ARG_MIB(i32 %111)
  store i32 %112, i32* %110, align 4
  %113 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %109, i32 0, i32 1
  store i32 6, i32* %113, align 4
  %114 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %109, i32 0, i32 2
  %115 = load i32, i32* @DME_PEER, align 4
  store i32 %115, i32* %114, align 4
  %116 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %109, i64 1
  %117 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %116, i32 0, i32 0
  %118 = load i32, i32* @T_CPORTMODE, align 4
  %119 = call i32 @UIC_ARG_MIB(i32 %118)
  store i32 %119, i32* %117, align 4
  %120 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %116, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %116, i32 0, i32 2
  %122 = load i32, i32* @DME_PEER, align 4
  store i32 %122, i32* %121, align 4
  %123 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %116, i64 1
  %124 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %123, i32 0, i32 0
  %125 = load i32, i32* @T_CONNECTIONSTATE, align 4
  %126 = call i32 @UIC_ARG_MIB(i32 %125)
  store i32 %126, i32* %124, align 4
  %127 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %123, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %123, i32 0, i32 2
  %129 = load i32, i32* @DME_PEER, align 4
  store i32 %129, i32* %128, align 4
  %130 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %131 = getelementptr inbounds [18 x %struct.ufshcd_dme_attr_val], [18 x %struct.ufshcd_dme_attr_val]* %3, i64 0, i64 0
  %132 = getelementptr inbounds [18 x %struct.ufshcd_dme_attr_val], [18 x %struct.ufshcd_dme_attr_val]* %3, i64 0, i64 0
  %133 = call i32 @ARRAY_SIZE(%struct.ufshcd_dme_attr_val* %132)
  %134 = call i32 @ufshcd_dwc_dme_set_attrs(%struct.ufs_hba* %130, %struct.ufshcd_dme_attr_val* %131, i32 %133)
  ret i32 %134
}

declare dso_local i32 @UIC_ARG_MIB(i32) #1

declare dso_local i32 @ufshcd_dwc_dme_set_attrs(%struct.ufs_hba*, %struct.ufshcd_dme_attr_val*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ufshcd_dme_attr_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
