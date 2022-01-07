; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_scan_logicalblocknumber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_scan_logicalblocknumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ms_lib_type_extdat = type { i32, i32, i64 }
%struct.ene_ub6250_info = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MS_PHYSICAL_BLOCKS_PER_SEGMENT = common dso_local global i64 0, align 8
@MS_REG_OVR_BKST = common dso_local global i32 0, align 4
@MS_REG_OVR_BKST_OK = common dso_local global i32 0, align 4
@MS_REG_MNG_ATFLG = common dso_local global i32 0, align 4
@MS_REG_MNG_ATFLG_ATTBL = common dso_local global i32 0, align 4
@MS_LB_NOT_USED = common dso_local global i64 0, align 8
@MS_REG_OVR_UDST = common dso_local global i32 0, align 4
@MS_REG_OVR_UDST_UPDATING = common dso_local global i32 0, align 4
@MS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_lib_scan_logicalblocknumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_scan_logicalblocknumber(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ms_lib_type_extdat, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ene_ub6250_info*, align 8
  %14 = alloca i8**, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.us_data*, %struct.us_data** %3, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %18, %struct.ene_ub6250_info** %13, align 8
  %19 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %13, align 8
  %20 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  store i8** %21, i8*** %14, align 8
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %182, %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %13, align 8
  %25 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %183

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @ms_lib_phy_to_log_range(i64 %30, i64* %8, i64* %9)
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %177, %29
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MS_PHYSICAL_BLOCKS_PER_SEGMENT, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %182

36:                                               ; preds = %32
  %37 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %13, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @ms_libconv_to_logical(%struct.ene_ub6250_info* %37, i64 %38)
  switch i32 %39, label %41 [
    i32 128, label %40
  ]

40:                                               ; preds = %36
  br label %177

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.us_data*, %struct.us_data** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i8**, i8*** %14, align 8
  %50 = call i32 @ms_lib_read_extrablock(%struct.us_data* %47, i64 %48, i32 0, i32 128, i8** %49)
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, 128
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %46, %42
  %54 = load i64, i64* %5, align 8
  %55 = srem i64 %54, 128
  %56 = mul nsw i64 %55, 4
  store i64 %56, i64* %12, align 8
  %57 = load i8**, i8*** %14, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load i8**, i8*** %14, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i8**, i8*** %14, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 2
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %14, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 3
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @memstick_logaddr(i8* %74, i8* %79)
  %81 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MS_REG_OVR_BKST, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @MS_REG_OVR_BKST_OK, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %53
  %89 = load %struct.us_data*, %struct.us_data** %3, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @ms_lib_setacquired_errorblock(%struct.us_data* %89, i64 %90)
  br label %177

92:                                               ; preds = %53
  %93 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MS_REG_MNG_ATFLG, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @MS_REG_MNG_ATFLG_ATTBL, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.us_data*, %struct.us_data** %3, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @ms_lib_erase_phyblock(%struct.us_data* %100, i64 %101)
  br label %177

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MS_LB_NOT_USED, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %176

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp sle i64 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %113, %108
  %119 = load %struct.us_data*, %struct.us_data** %3, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @ms_lib_erase_phyblock(%struct.us_data* %119, i64 %120)
  br label %177

122:                                              ; preds = %113
  %123 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %13, align 8
  %124 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @ms_libconv_to_physical(%struct.ene_ub6250_info* %123, i64 %125)
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* @MS_LB_NOT_USED, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %170

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %130
  %135 = load %struct.us_data*, %struct.us_data** %3, align 8
  %136 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @ms_lib_set_logicalpair(%struct.us_data* %135, i64 %137, i64 %138)
  %140 = load %struct.us_data*, %struct.us_data** %3, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i64 @ms_lib_check_disableblock(%struct.us_data* %140, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load %struct.us_data*, %struct.us_data** %3, align 8
  %146 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = call i32 @ms_lib_set_logicalpair(%struct.us_data* %145, i64 %147, i64 %148)
  br label %177

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150, %130
  %152 = load %struct.us_data*, %struct.us_data** %3, align 8
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @ms_lib_read_extra(%struct.us_data* %152, i64 %153, i32 0, %struct.ms_lib_type_extdat* %10)
  %155 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MS_REG_OVR_UDST, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @MS_REG_OVR_UDST_UPDATING, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = load %struct.us_data*, %struct.us_data** %3, align 8
  %163 = load i64, i64* %5, align 8
  %164 = call i32 @ms_lib_erase_phyblock(%struct.us_data* %162, i64 %163)
  br label %177

165:                                              ; preds = %151
  %166 = load %struct.us_data*, %struct.us_data** %3, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @ms_lib_erase_phyblock(%struct.us_data* %166, i64 %167)
  br label %169

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %122
  %171 = load %struct.us_data*, %struct.us_data** %3, align 8
  %172 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %10, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %5, align 8
  %175 = call i32 @ms_lib_set_logicalpair(%struct.us_data* %171, i64 %173, i64 %174)
  br label %176

176:                                              ; preds = %170, %103
  br label %177

177:                                              ; preds = %176, %161, %144, %118, %99, %88, %40
  %178 = load i64, i64* %7, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %7, align 8
  %180 = load i64, i64* %5, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %5, align 8
  br label %32

182:                                              ; preds = %32
  br label %22

183:                                              ; preds = %22
  %184 = load i32, i32* @MS_STATUS_SUCCESS, align 4
  ret i32 %184
}

declare dso_local i32 @ms_lib_phy_to_log_range(i64, i64*, i64*) #1

declare dso_local i32 @ms_libconv_to_logical(%struct.ene_ub6250_info*, i64) #1

declare dso_local i32 @ms_lib_read_extrablock(%struct.us_data*, i64, i32, i32, i8**) #1

declare dso_local i64 @memstick_logaddr(i8*, i8*) #1

declare dso_local i32 @ms_lib_setacquired_errorblock(%struct.us_data*, i64) #1

declare dso_local i32 @ms_lib_erase_phyblock(%struct.us_data*, i64) #1

declare dso_local i64 @ms_libconv_to_physical(%struct.ene_ub6250_info*, i64) #1

declare dso_local i32 @ms_lib_set_logicalpair(%struct.us_data*, i64, i64) #1

declare dso_local i64 @ms_lib_check_disableblock(%struct.us_data*, i64) #1

declare dso_local i32 @ms_lib_read_extra(%struct.us_data*, i64, i32, %struct.ms_lib_type_extdat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
