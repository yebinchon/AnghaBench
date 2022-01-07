; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_fdmi_get_hbaattr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_fdmi_get_hbaattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_fdmi_s = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.bfa_fcs_driver_info_s }
%struct.TYPE_13__ = type { i32 }
%struct.bfa_fcs_driver_info_s = type { i8*, i8*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.bfa_fcs_fdmi_hba_attr_s = type { i8*, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bfa_fcs_fdmi_port_attr_s = type { i32 }

@BFA_FCS_PORT_SYMBNAME_SEPARATOR = common dso_local global i8* null, align 8
@BFA_SYMNAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"QLogic\00", align 1
@BFA_VERSION_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_fdmi_hba_attr_s*)* @bfa_fcs_fdmi_get_hbaattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fdmi_get_hbaattr(%struct.bfa_fcs_lport_fdmi_s* %0, %struct.bfa_fcs_fdmi_hba_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  %4 = alloca %struct.bfa_fcs_fdmi_hba_attr_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.bfa_fcs_driver_info_s*, align 8
  %7 = alloca %struct.bfa_fcs_fdmi_port_attr_s, align 4
  store %struct.bfa_fcs_lport_fdmi_s* %0, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  store %struct.bfa_fcs_fdmi_hba_attr_s* %1, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %8 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %11, align 8
  store %struct.bfa_fcs_lport_s* %12, %struct.bfa_fcs_lport_s** %5, align 8
  %13 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store %struct.bfa_fcs_driver_info_s* %16, %struct.bfa_fcs_driver_info_s** %6, align 8
  %17 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %18 = call i32 @memset(%struct.bfa_fcs_fdmi_hba_attr_s* %17, i32 0, i32 64)
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bfa_ioc_get_adapter_manufacturer(i32* %24, i32 %27)
  %29 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bfa_ioc_get_adapter_serial_num(i32* %34, i32 %37)
  %39 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bfa_ioc_get_adapter_model(i32* %44, i32 %47)
  %49 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bfa_ioc_get_adapter_model(i32* %54, i32 %57)
  %59 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bfa_ioc_get_pci_chip_rev(i32* %64, i32 %67)
  %69 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %70 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %69, i32 0, i32 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %76 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @bfa_ioc_get_adapter_optrom_ver(i32* %74, i8* %77)
  %79 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %80 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %86 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bfa_ioc_get_adapter_fw_ver(i32* %84, i32 %87)
  %89 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bfa_fcs_driver_info_s*, %struct.bfa_fcs_driver_info_s** %6, align 8
  %93 = getelementptr inbounds %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_driver_info_s* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @strlcpy(i32 %91, i8* %95, i32 4)
  %97 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %98 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bfa_fcs_driver_info_s*, %struct.bfa_fcs_driver_info_s** %6, align 8
  %101 = getelementptr inbounds %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_driver_info_s* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlcpy(i32 %99, i8* %102, i32 4)
  %104 = load %struct.bfa_fcs_driver_info_s*, %struct.bfa_fcs_driver_info_s** %6, align 8
  %105 = getelementptr inbounds %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_driver_info_s* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %2
  %112 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %113 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** @BFA_FCS_PORT_SYMBNAME_SEPARATOR, align 8
  %116 = call i32 @strlcat(i32 %114, i8* %115, i32 4)
  %117 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %118 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.bfa_fcs_driver_info_s*, %struct.bfa_fcs_driver_info_s** %6, align 8
  %121 = getelementptr inbounds %struct.bfa_fcs_driver_info_s, %struct.bfa_fcs_driver_info_s* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlcat(i32 %119, i8* %122, i32 4)
  br label %124

124:                                              ; preds = %111, %2
  %125 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %3, align 8
  %126 = call i32 @bfa_fcs_fdmi_get_portattr(%struct.bfa_fcs_lport_fdmi_s* %125, %struct.bfa_fcs_fdmi_port_attr_s* %7)
  %127 = getelementptr inbounds %struct.bfa_fcs_fdmi_port_attr_s, %struct.bfa_fcs_fdmi_port_attr_s* %7, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %130 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %132 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %136 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @BFA_SYMNAME_MAXLEN, align 4
  %141 = call i32 @strlcpy(i32 %134, i8* %139, i32 %140)
  %142 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %143 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @strcpy(i32 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %147 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = call i32 @bfa_ioc_get_nports(i32* %151)
  %153 = call i32 @cpu_to_be32(i32 %152)
  %154 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %155 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %157 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %164 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %166 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.bfa_fcs_fdmi_hba_attr_s*, %struct.bfa_fcs_fdmi_hba_attr_s** %4, align 8
  %169 = getelementptr inbounds %struct.bfa_fcs_fdmi_hba_attr_s, %struct.bfa_fcs_fdmi_hba_attr_s* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* @BFA_VERSION_LEN, align 4
  %172 = call i32 @strlcpy(i32 %167, i8* %170, i32 %171)
  ret void
}

declare dso_local i32 @memset(%struct.bfa_fcs_fdmi_hba_attr_s*, i32, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_manufacturer(i32*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_serial_num(i32*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_model(i32*, i32) #1

declare dso_local i32 @bfa_ioc_get_pci_chip_rev(i32*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_optrom_ver(i32*, i8*) #1

declare dso_local i32 @bfa_ioc_get_adapter_fw_ver(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @bfa_fcs_fdmi_get_portattr(%struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_fdmi_port_attr_s*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @bfa_ioc_get_nports(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
