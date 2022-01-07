; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_get_page2_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_get_page2_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.ses_device*, %struct.TYPE_2__ }
%struct.ses_device = type { i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.enclosure_component = type { i32 }
%struct.scsi_device = type { i32 }

@ENCLOSURE_COMPONENT_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_ARRAY_DEVICE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.enclosure_device*, %struct.enclosure_component*)* @ses_get_page2_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ses_get_page2_descriptor(%struct.enclosure_device* %0, %struct.enclosure_component* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.enclosure_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ses_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.enclosure_component*, %struct.enclosure_component** %5, align 8
  %15 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %18 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.scsi_device* @to_scsi_device(i32 %20)
  store %struct.scsi_device* %21, %struct.scsi_device** %10, align 8
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %23 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %22, i32 0, i32 0
  %24 = load %struct.ses_device*, %struct.ses_device** %23, align 8
  store %struct.ses_device* %24, %struct.ses_device** %11, align 8
  %25 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %26 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  %28 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %29 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  store i8* %31, i8** %13, align 8
  %32 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %33 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %34 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %37 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ses_recv_diag(%struct.scsi_device* %32, i32 2, i8* %35, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %94

42:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %88, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ses_device*, %struct.ses_device** %11, align 8
  %46 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %50
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %84

76:                                               ; preds = %67, %57
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %3, align 8
  br label %94

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %50

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8* %92, i8** %12, align 8
  br label %43

93:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %94

94:                                               ; preds = %93, %81, %41
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

declare dso_local %struct.scsi_device* @to_scsi_device(i32) #1

declare dso_local i64 @ses_recv_diag(%struct.scsi_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
