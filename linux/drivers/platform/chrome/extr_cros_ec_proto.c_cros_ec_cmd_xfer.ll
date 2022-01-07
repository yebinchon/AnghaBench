; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_cmd_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_proto.c_cros_ec_cmd_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i64, i64, i64, i64, i32, i32 }
%struct.cros_ec_command = type { i64, i64, i64 }

@EC_PROTO_VERSION_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"EC version unknown and query failed; aborting command\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"clamping message receive buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"request of size %u is too big (max: %u)\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"passthru rq of size %u is too big (max: %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_cmd_xfer(%struct.cros_ec_device* %0, %struct.cros_ec_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store %struct.cros_ec_command* %1, %struct.cros_ec_command** %5, align 8
  %7 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %8 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %7, i32 0, i32 4
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %11 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EC_PROTO_VERSION_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %17 = call i32 @cros_ec_query_all(%struct.cros_ec_device* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %26 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %25, i32 0, i32 4
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %112

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %32 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %35 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %40 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %44 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %47 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %38, %30
  %49 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %50 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @EC_CMD_PASSTHRU_OFFSET(i32 1)
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %56 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %59 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %64 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %67 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %70 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %71)
  %73 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %74 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %73, i32 0, i32 4
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %112

78:                                               ; preds = %54
  br label %104

79:                                               ; preds = %48
  %80 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %81 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %84 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %89 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %92 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %95 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %93, i64 %96)
  %98 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %99 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %98, i32 0, i32 4
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* @EMSGSIZE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %112

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %106 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %107 = call i32 @send_command(%struct.cros_ec_device* %105, %struct.cros_ec_command* %106)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %109 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %108, i32 0, i32 4
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %87, %62, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cros_ec_query_all(%struct.cros_ec_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @EC_CMD_PASSTHRU_OFFSET(i32) #1

declare dso_local i32 @send_command(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
