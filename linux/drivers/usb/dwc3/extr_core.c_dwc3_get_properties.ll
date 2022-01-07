; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_get_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_get_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.device*, %struct.device*, i8*, i32, i32, i32 }
%struct.device = type { %struct.device*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"linux,sysdev_is_parent\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"snps,has-lpm-erratum\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"snps,lpm-nyet-threshold\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"snps,is-utmi-l1-suspend\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"snps,hird-threshold\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"snps,dis-start-transfer-quirk\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"snps,usb3_lpm_capable\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"snps,usb2-lpm-disable\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"snps,rx-thr-num-pkt-prd\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"snps,rx-max-burst-prd\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"snps,tx-thr-num-pkt-prd\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"snps,tx-max-burst-prd\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"snps,disable_scramble_quirk\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"snps,u2exit_lfps_quirk\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"snps,u2ss_inp3_quirk\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"snps,req_p1p2p3_quirk\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"snps,del_p1p2p3_quirk\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"snps,del_phy_power_chg_quirk\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"snps,lfps_filter_quirk\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"snps,rx_detect_poll_quirk\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"snps,dis_u3_susphy_quirk\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"snps,dis_u2_susphy_quirk\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"snps,dis_enblslpm_quirk\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"snps,dis-u1-entry-quirk\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"snps,dis-u2-entry-quirk\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"snps,dis_rxdet_inp3_quirk\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"snps,dis-u2-freeclk-exists-quirk\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"snps,dis-del-phy-power-chg-quirk\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"snps,dis-tx-ipgap-linecheck-quirk\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"snps,tx_de_emphasis_quirk\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"snps,tx_de_emphasis\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"snps,hsphy_interface\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"snps,quirk-frame-length-adjustment\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"snps,dis_metastability_quirk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_get_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_get_properties(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 34
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %3, align 8
  store i8* inttoptr (i64 15 to i8*), i8** %4, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %5, align 8
  store i8* inttoptr (i64 12 to i8*), i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @usb_get_maximum_speed(%struct.device* %14)
  %16 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 39
  store i32 %15, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @usb_get_dr_mode(%struct.device* %18)
  %20 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 38
  store i32 %19, i32* %21, align 4
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @of_usb_get_phy_mode(i32 %24)
  %26 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 37
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i8* @device_property_read_bool(%struct.device* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 36
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 36
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 34
  %39 = load %struct.device*, %struct.device** %38, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load %struct.device*, %struct.device** %40, align 8
  %42 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 35
  store %struct.device* %41, %struct.device** %43, align 8
  br label %50

44:                                               ; preds = %1
  %45 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %46 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %45, i32 0, i32 34
  %47 = load %struct.device*, %struct.device** %46, align 8
  %48 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 35
  store %struct.device* %47, %struct.device** %49, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i8* @device_property_read_bool(%struct.device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 33
  store i8* %52, i8** %54, align 8
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @device_property_read_u8(%struct.device* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %4)
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = call i8* @device_property_read_bool(%struct.device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 32
  store i8* %58, i8** %60, align 8
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = call i32 @device_property_read_u8(%struct.device* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %6)
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = call i8* @device_property_read_bool(%struct.device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %66 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %65, i32 0, i32 31
  store i8* %64, i8** %66, align 8
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = call i8* @device_property_read_bool(%struct.device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 30
  store i8* %68, i8** %70, align 8
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = call i8* @device_property_read_bool(%struct.device* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %73 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %74 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %73, i32 0, i32 29
  store i8* %72, i8** %74, align 8
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = call i32 @device_property_read_u8(%struct.device* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %7)
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = call i32 @device_property_read_u8(%struct.device* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %8)
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = call i32 @device_property_read_u8(%struct.device* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %9)
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i32 @device_property_read_u8(%struct.device* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %10)
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i8* @device_property_read_bool(%struct.device* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %85 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %85, i32 0, i32 28
  store i8* %84, i8** %86, align 8
  %87 = load %struct.device*, %struct.device** %3, align 8
  %88 = call i8* @device_property_read_bool(%struct.device* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %89 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %90 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %89, i32 0, i32 27
  store i8* %88, i8** %90, align 8
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = call i8* @device_property_read_bool(%struct.device* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %93 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %94 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %93, i32 0, i32 26
  store i8* %92, i8** %94, align 8
  %95 = load %struct.device*, %struct.device** %3, align 8
  %96 = call i8* @device_property_read_bool(%struct.device* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %97 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %98 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %97, i32 0, i32 25
  store i8* %96, i8** %98, align 8
  %99 = load %struct.device*, %struct.device** %3, align 8
  %100 = call i8* @device_property_read_bool(%struct.device* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %101 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %102 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %101, i32 0, i32 24
  store i8* %100, i8** %102, align 8
  %103 = load %struct.device*, %struct.device** %3, align 8
  %104 = call i8* @device_property_read_bool(%struct.device* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %105 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %106 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %105, i32 0, i32 23
  store i8* %104, i8** %106, align 8
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = call i8* @device_property_read_bool(%struct.device* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %109 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %110 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %109, i32 0, i32 22
  store i8* %108, i8** %110, align 8
  %111 = load %struct.device*, %struct.device** %3, align 8
  %112 = call i8* @device_property_read_bool(%struct.device* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %113 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %114 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %113, i32 0, i32 21
  store i8* %112, i8** %114, align 8
  %115 = load %struct.device*, %struct.device** %3, align 8
  %116 = call i8* @device_property_read_bool(%struct.device* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %117 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %118 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %117, i32 0, i32 20
  store i8* %116, i8** %118, align 8
  %119 = load %struct.device*, %struct.device** %3, align 8
  %120 = call i8* @device_property_read_bool(%struct.device* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %121 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %122 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %121, i32 0, i32 19
  store i8* %120, i8** %122, align 8
  %123 = load %struct.device*, %struct.device** %3, align 8
  %124 = call i8* @device_property_read_bool(%struct.device* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %125 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %126 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %125, i32 0, i32 18
  store i8* %124, i8** %126, align 8
  %127 = load %struct.device*, %struct.device** %3, align 8
  %128 = call i8* @device_property_read_bool(%struct.device* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  %129 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %130 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %129, i32 0, i32 17
  store i8* %128, i8** %130, align 8
  %131 = load %struct.device*, %struct.device** %3, align 8
  %132 = call i8* @device_property_read_bool(%struct.device* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %133 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %134 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %133, i32 0, i32 16
  store i8* %132, i8** %134, align 8
  %135 = load %struct.device*, %struct.device** %3, align 8
  %136 = call i8* @device_property_read_bool(%struct.device* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  %137 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %138 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %137, i32 0, i32 15
  store i8* %136, i8** %138, align 8
  %139 = load %struct.device*, %struct.device** %3, align 8
  %140 = call i8* @device_property_read_bool(%struct.device* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  %141 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %142 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %141, i32 0, i32 14
  store i8* %140, i8** %142, align 8
  %143 = load %struct.device*, %struct.device** %3, align 8
  %144 = call i8* @device_property_read_bool(%struct.device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0))
  %145 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %146 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %145, i32 0, i32 13
  store i8* %144, i8** %146, align 8
  %147 = load %struct.device*, %struct.device** %3, align 8
  %148 = call i8* @device_property_read_bool(%struct.device* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  %149 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %150 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %149, i32 0, i32 12
  store i8* %148, i8** %150, align 8
  %151 = load %struct.device*, %struct.device** %3, align 8
  %152 = call i8* @device_property_read_bool(%struct.device* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %153 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %154 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %153, i32 0, i32 11
  store i8* %152, i8** %154, align 8
  %155 = load %struct.device*, %struct.device** %3, align 8
  %156 = call i32 @device_property_read_u8(%struct.device* %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i8** %5)
  %157 = load %struct.device*, %struct.device** %3, align 8
  %158 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %159 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %158, i32 0, i32 10
  %160 = call i32 @device_property_read_string(%struct.device* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32* %159)
  %161 = load %struct.device*, %struct.device** %3, align 8
  %162 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %163 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %162, i32 0, i32 9
  %164 = call i32 @device_property_read_u32(%struct.device* %161, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i32* %163)
  %165 = load %struct.device*, %struct.device** %3, align 8
  %166 = call i8* @device_property_read_bool(%struct.device* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %167 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %168 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %167, i32 0, i32 8
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %171 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %170, i32 0, i32 7
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %174 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %177 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %176, i32 0, i32 5
  store i8* %175, i8** %177, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %180 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %183 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %186 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %185, i32 0, i32 2
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %189 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %191 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  ret void
}

declare dso_local i32 @usb_get_maximum_speed(%struct.device*) #1

declare dso_local i32 @usb_get_dr_mode(%struct.device*) #1

declare dso_local i32 @of_usb_get_phy_mode(i32) #1

declare dso_local i8* @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u8(%struct.device*, i8*, i8**) #1

declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i32*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
