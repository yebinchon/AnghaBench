; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_set_page2_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_set_page2_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.ses_device*, %struct.TYPE_2__ }
%struct.ses_device = type { i8*, i8*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.enclosure_component = type { i32 }
%struct.scsi_device = type { i32 }

@ENCLOSURE_COMPONENT_DEVICE = common dso_local global i8 0, align 1
@ENCLOSURE_COMPONENT_ARRAY_DEVICE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enclosure_device*, %struct.enclosure_component*, i8*)* @ses_set_page2_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_page2_descriptor(%struct.enclosure_device* %0, %struct.enclosure_component* %1, i8* %2) #0 {
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.enclosure_component*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca %struct.ses_device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.enclosure_component*, %struct.enclosure_component** %5, align 8
  %16 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %19 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.scsi_device* @to_scsi_device(i32 %21)
  store %struct.scsi_device* %22, %struct.scsi_device** %11, align 8
  %23 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %24 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %23, i32 0, i32 0
  %25 = load %struct.ses_device*, %struct.ses_device** %24, align 8
  store %struct.ses_device* %25, %struct.ses_device** %12, align 8
  %26 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %27 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  %29 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %30 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %35 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 8
  %38 = call i32 @memset(i8* %33, i32 0, i64 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %98, %3
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %42 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %94, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %46
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @ENCLOSURE_COMPONENT_DEVICE, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @ENCLOSURE_COMPONENT_ARRAY_DEVICE, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %94

72:                                               ; preds = %63, %53
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @memcpy(i8* %78, i8* %79, i32 4)
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, 128
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 240
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  br label %93

93:                                               ; preds = %77, %72
  br label %94

94:                                               ; preds = %93, %71
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %46

97:                                               ; preds = %46
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  store i8* %102, i8** %13, align 8
  br label %39

103:                                              ; preds = %39
  %104 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %105 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %106 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.ses_device*, %struct.ses_device** %12, align 8
  %109 = getelementptr inbounds %struct.ses_device, %struct.ses_device* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @ses_send_diag(%struct.scsi_device* %104, i32 2, i8* %107, i64 %110)
  ret i32 %111
}

declare dso_local %struct.scsi_device* @to_scsi_device(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ses_send_diag(%struct.scsi_device*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
