; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_altmode_update_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_altmode_update_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { %struct.typec_altmode**, i32*, %struct.TYPE_6__*, i32 }
%struct.typec_altmode = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ucsi_control = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"GET_CURRENT_CAM command failed\0A\00", align 1
@UCSI_MAX_ALTMODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucsi_altmode_update_active(%struct.ucsi_connector* %0) #0 {
  %2 = alloca %struct.ucsi_connector*, align 8
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.ucsi_control, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %2, align 8
  store %struct.typec_altmode* null, %struct.typec_altmode** %3, align 8
  %8 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %9 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @UCSI_CMD_GET_CURRENT_CAM(i32 %12, i32 %10)
  %14 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %15 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @ucsi_run_command(%struct.TYPE_6__* %16, %struct.ucsi_control* %4, i64* %6, i32 8)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %22 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 256
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %33 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %83

38:                                               ; preds = %20
  store i64 255, i64* %6, align 8
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @UCSI_MAX_ALTMODES, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %45 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.typec_altmode* @typec_altmode_get_partner(i32 %49)
  store %struct.typec_altmode* %50, %struct.typec_altmode** %3, align 8
  br label %51

51:                                               ; preds = %43, %39
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %80, %51
  %53 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %54 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %53, i32 0, i32 0
  %55 = load %struct.typec_altmode**, %struct.typec_altmode*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %55, i64 %57
  %59 = load %struct.typec_altmode*, %struct.typec_altmode** %58, align 8
  %60 = icmp ne %struct.typec_altmode* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %52
  %62 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %63 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %62, i32 0, i32 0
  %64 = load %struct.typec_altmode**, %struct.typec_altmode*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %64, i64 %66
  %68 = load %struct.typec_altmode*, %struct.typec_altmode** %67, align 8
  %69 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %70 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %69, i32 0, i32 0
  %71 = load %struct.typec_altmode**, %struct.typec_altmode*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %71, i64 %73
  %75 = load %struct.typec_altmode*, %struct.typec_altmode** %74, align 8
  %76 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %77 = icmp eq %struct.typec_altmode* %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @typec_altmode_update_active(%struct.typec_altmode* %68, i32 %78)
  br label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %52

83:                                               ; preds = %31, %52
  ret void
}

declare dso_local i32 @UCSI_CMD_GET_CURRENT_CAM(i32, i32) #1

declare dso_local i32 @ucsi_run_command(%struct.TYPE_6__*, %struct.ucsi_control*, i64*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.typec_altmode* @typec_altmode_get_partner(i32) #1

declare dso_local i32 @typec_altmode_update_active(%struct.typec_altmode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
