; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_parse_sp_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_parse_sp_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Invalid information section length %d\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"DGC\00", align 1
@emc_default_str = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: Invalid array serial number length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: Invalid model number length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_device*, i8*)* @parse_sp_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_sp_model(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 4
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, 5
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  store i8* null, i8** %6, align 8
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %16, 160
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i32, i32* @KERN_WARNING, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = load i32, i32* @CLARIION_NAME, align 4
  %22 = load i8, i8* %5, align 1
  %23 = call i32 @sdev_printk(i32 %19, %struct.scsi_device* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, i8 zeroext %22)
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i8*, i8** @emc_default_str, align 8
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %28, %18
  br label %105

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 160
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, 161
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %48 = load i32, i32* @CLARIION_NAME, align 4
  %49 = load i8, i8* %8, align 1
  %50 = call i32 @sdev_printk(i32 %46, %struct.scsi_device* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8 zeroext %49)
  br label %105

51:                                               ; preds = %38
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 99
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %7, align 1
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %51
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = add nsw i32 %63, 161
  %65 = load i8, i8* %5, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %58, %51
  %69 = load i32, i32* @KERN_WARNING, align 4
  %70 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %71 = load i32, i32* @CLARIION_NAME, align 4
  %72 = load i8, i8* %7, align 1
  %73 = call i32 @sdev_printk(i32 %69, %struct.scsi_device* %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8 zeroext %72)
  br label %105

74:                                               ; preds = %58
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 161
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8* %80, i8** %6, align 8
  br label %81

81:                                               ; preds = %97, %74
  %82 = load i8, i8* %7, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %7, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 32
  br label %95

95:                                               ; preds = %85, %81
  %96 = phi i1 [ false, %81 ], [ %94, %85 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i8, i8* %7, align 1
  %99 = add i8 %98, -1
  store i8 %99, i8* %7, align 1
  br label %81

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %100, %68, %45, %30
  %106 = load i8*, i8** %6, align 8
  ret i8* %106
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
