; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.clariion_dh_data* }
%struct.clariion_dh_data = type { i64, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CLARIION_SHORT_TRESPASS = common dso_local global i32 0, align 4
@CLARIION_HONOR_RESERVATIONS = common dso_local global i32 0, align 4
@CLARIION_LUN_OWNED = common dso_local global i64 0, align 8
@CLARIION_LUN_UNINITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @clariion_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_set_params(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clariion_dh_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %13, align 8
  store %struct.clariion_dh_data* %14, %struct.clariion_dh_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %32, %26
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  %30 = load i8, i8* %28, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %27

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %116

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %49, %43
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %45, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %44

50:                                               ; preds = %44
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %116

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @CLARIION_SHORT_TRESPASS, align 4
  %65 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %66 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %76

69:                                               ; preds = %60
  %70 = load i32, i32* @CLARIION_SHORT_TRESPASS, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %73 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %63
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* @CLARIION_HONOR_RESERVATIONS, align 4
  %81 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %82 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %92

85:                                               ; preds = %76
  %86 = load i32, i32* @CLARIION_HONOR_RESERVATIONS, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %89 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %94 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CLARIION_LUN_OWNED, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %114

99:                                               ; preds = %92
  %100 = load i64, i64* @CLARIION_LUN_UNINITIALIZED, align 8
  %101 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %102 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %104 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %105 = call i32 @send_trespass_cmd(%struct.scsi_device* %103, %struct.clariion_dh_data* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SCSI_DH_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %114

110:                                              ; preds = %99
  %111 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %112 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %6, align 8
  %113 = call i32 @clariion_send_inquiry(%struct.scsi_device* %111, %struct.clariion_dh_data* %112)
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %109, %98
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %57, %40, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @send_trespass_cmd(%struct.scsi_device*, %struct.clariion_dh_data*) #1

declare dso_local i32 @clariion_send_inquiry(%struct.scsi_device*, %struct.clariion_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
