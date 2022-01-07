; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_fdmi_get_portattr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_fdmi_get_portattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_fdmi_s = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.bfa_fcs_driver_info_s }
%struct.bfa_fcs_driver_info_s = type { i32, i32 }
%struct.bfa_fcs_fdmi_port_attr_s = type { i8*, i8*, i32, i32, i32, i8*, %struct.TYPE_10__, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bfa_port_attr_s = type { i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bfa_lport_attr_s = type { i32 }
%struct.TYPE_14__ = type { i32 }

@FC_TYPE_FCP = common dso_local global i32 0, align 4
@BFA_FCS_FDMI_SUPP_SPEEDS_16G = common dso_local global i32 0, align 4
@BFA_FCS_FDMI_SUPP_SPEEDS_10G = common dso_local global i32 0, align 4
@BFA_FCS_FDMI_SUPP_SPEEDS_8G = common dso_local global i32 0, align 4
@BFA_FCS_FDMI_SUPP_SPEEDS_4G = common dso_local global i32 0, align 4
@BFA_SYMNAME_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_fdmi_port_attr_s*)* @bfa_fcs_fdmi_get_portattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fdmi_get_portattr(%struct.bfa_fcs_lport_fdmi_s* %0, %struct.bfa_fcs_fdmi_port_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  %4 = alloca %struct.bfa_fcs_fdmi_port_attr_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.bfa_fcs_driver_info_s*, align 8
  %7 = alloca %struct.bfa_port_attr_s, align 4
  %8 = alloca %struct.bfa_lport_attr_s, align 4
  %9 = alloca %struct.TYPE_14__, align 4
  store %struct.bfa_fcs_lport_fdmi_s* %0, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  store %struct.bfa_fcs_fdmi_port_attr_s* %1, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %10 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %13, align 8
  store %struct.bfa_fcs_lport_s* %14, %struct.bfa_fcs_lport_s** %5, align 8
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store %struct.bfa_fcs_driver_info_s* %18, %struct.bfa_fcs_driver_info_s** %6, align 8
  %19 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %20 = call i32 @memset(%struct.bfa_fcs_fdmi_port_attr_s* %19, i32 0, i32 96)
  %21 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfa_fcport_get_attr(i32 %25, %struct.bfa_port_attr_s* %7)
  %27 = load i32, i32* @FC_TYPE_FCP, align 4
  %28 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @fc_get_fc4type_bitmask(i32 %27, i32 %30)
  %32 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %54 [
    i32 130, label %34
    i32 131, label %39
    i32 128, label %44
    i32 129, label %49
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @BFA_FCS_FDMI_SUPP_SPEEDS_16G, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  br label %61

39:                                               ; preds = %2
  %40 = load i32, i32* @BFA_FCS_FDMI_SUPP_SPEEDS_10G, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %42, i32 0, i32 13
  store i8* %41, i8** %43, align 8
  br label %61

44:                                               ; preds = %2
  %45 = load i32, i32* @BFA_FCS_FDMI_SUPP_SPEEDS_8G, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %47, i32 0, i32 13
  store i8* %46, i8** %48, align 8
  br label %61

49:                                               ; preds = %2
  %50 = load i32, i32* @BFA_FCS_FDMI_SUPP_SPEEDS_4G, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %52, i32 0, i32 13
  store i8* %51, i8** %53, align 8
  br label %61

54:                                               ; preds = %2
  %55 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bfa_sm_fault(%struct.TYPE_13__* %57, i32 %59)
  br label %61

61:                                               ; preds = %54, %49, %44, %39, %34
  %62 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %7, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bfa_fcs_fdmi_convert_speed(i32 %63)
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %66, i32 0, i32 12
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %7, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %72, i32 0, i32 11
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %75 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bfa_fcs_driver_info_s*, %struct.bfa_fcs_driver_info_s** %6, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_driver_info_s* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strlcpy(i32 %76, i32 %79, i32 4)
  %81 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %82 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bfa_fcs_driver_info_s*, %struct.bfa_fcs_driver_info_s** %6, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_driver_info_s* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strlcpy(i32 %83, i32 %86, i32 4)
  %88 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %89 = call i32 @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s* %88)
  %90 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %91 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %93 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %92)
  %94 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %95 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %97 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %101 = call i32 @bfa_fcs_lport_get_psym_name(%struct.bfa_fcs_lport_s* %100)
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @BFA_SYMNAME_MAXLEN, align 4
  %106 = call i32 @strlcpy(i32 %99, i32 %104, i32 %105)
  %107 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %108 = call i32 @bfa_fcs_lport_get_attr(%struct.bfa_fcs_lport_s* %107, %struct.bfa_lport_attr_s* %8)
  %109 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %8, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @cpu_to_be32(i32 %110)
  %112 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %113 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %7, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %117 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %119 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %126 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @FC_TYPE_FCP, align 4
  %128 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %129 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @fc_get_fc4type_bitmask(i32 %127, i32 %130)
  %132 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %7, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %136 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %138 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @cpu_to_be32(i32 %139)
  %141 = load %struct.bfa_fcs_fdmi_port_attr_s*, %struct.bfa_fcs_fdmi_port_attr_s** %4, align 8
  %142 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  ret void
}

declare dso_local i32 @memset(%struct.bfa_fcs_fdmi_port_attr_s*, i32, i32) #1

declare dso_local i32 @bfa_fcport_get_attr(i32, %struct.bfa_port_attr_s*) #1

declare dso_local i32 @fc_get_fc4type_bitmask(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bfa_fcs_fdmi_convert_speed(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_psym_name(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_attr(%struct.bfa_fcs_lport_s*, %struct.bfa_lport_attr_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
