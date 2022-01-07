; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_get_EDID_OF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_get_EDID_OF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.riva_par* }
%struct.riva_par = type { i8* }
%struct.pci_dev = type { i32 }
%struct.device_node = type { %struct.device_node* }

@riva_get_EDID_OF.propnames = internal global [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [9 x i8] c"DFP,EDID\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LCD,EDID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"EDID\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"EDID1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EDID,B\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"EDID,A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"display-type\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"LCD found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.pci_dev*)* @riva_get_EDID_OF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riva_get_EDID_OF(%struct.fb_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.riva_par*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load %struct.riva_par*, %struct.riva_par** %12, align 8
  store %struct.riva_par* %13, %struct.riva_par** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = call i32 (...) @NVTRACE_ENTER()
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %15)
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  br label %17

17:                                               ; preds = %57, %2
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = call i8* @of_get_property(%struct.device_node* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %57

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %57

31:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i8*], [7 x i8*]* @riva_get_EDID_OF.propnames, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [7 x i8*], [7 x i8*]* @riva_get_EDID_OF.propnames, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @of_get_property(%struct.device_node* %39, i8* %43, i32* null)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %50 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = call i32 @NVTRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %63

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %32

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %30, %25
  %58 = load %struct.device_node*, %struct.device_node** %7, align 8
  %59 = getelementptr inbounds %struct.device_node, %struct.device_node* %58, i32 0, i32 0
  %60 = load %struct.device_node*, %struct.device_node** %59, align 8
  store %struct.device_node* %60, %struct.device_node** %7, align 8
  br label %17

61:                                               ; preds = %17
  %62 = call i32 (...) @NVTRACE_LEAVE()
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %47
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @NVTRACE(i8*) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
