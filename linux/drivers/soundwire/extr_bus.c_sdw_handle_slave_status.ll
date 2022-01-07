; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_handle_slave_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_handle_slave_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, i32, i32 }
%struct.sdw_slave = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Slave attached, programming device number\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Slave attach failed: %d\0A\00", align 1
@SDW_MAX_DEVICES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Slave %d alert handling failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Slave %d initialization failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid slave %d status:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Update Slave status failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_handle_slave_status(%struct.sdw_bus* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdw_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %16 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %20 = call i32 @sdw_program_device_num(%struct.sdw_bus* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %25 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %14
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %151

31:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %146, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SDW_MAX_DEVICES, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %149

36:                                               ; preds = %32
  %37 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %38 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %42 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @test_bit(i32 %40, i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %48 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %146

50:                                               ; preds = %36
  %51 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %52 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call %struct.sdw_slave* @sdw_get_slave(%struct.sdw_bus* %54, i32 %55)
  store %struct.sdw_slave* %56, %struct.sdw_slave** %7, align 8
  %57 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %58 = icmp ne %struct.sdw_slave* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %146

60:                                               ; preds = %50
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %116 [
    i32 128, label %66
    i32 130, label %75
    i32 129, label %88
  ]

66:                                               ; preds = %60
  %67 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %68 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %127

72:                                               ; preds = %66
  %73 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %74 = call i32 @sdw_modify_slave_status(%struct.sdw_slave* %73, i32 128)
  br label %127

75:                                               ; preds = %60
  %76 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %77 = call i32 @sdw_handle_slave_alerts(%struct.sdw_slave* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %82 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  br label %127

88:                                               ; preds = %60
  %89 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %90 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 129
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %127

94:                                               ; preds = %88
  %95 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %96 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %6, align 4
  %98 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %99 = call i32 @sdw_modify_slave_status(%struct.sdw_slave* %98, i32 129)
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %127

103:                                              ; preds = %94
  %104 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %105 = call i32 @sdw_initialize_slave(%struct.sdw_slave* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %110 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %103
  br label %127

116:                                              ; preds = %60
  %117 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %118 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %116, %115, %102, %93, %87, %72, %71
  %128 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @sdw_update_slave_status(%struct.sdw_slave* %128, i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %139 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %137, %127
  br label %146

146:                                              ; preds = %145, %59, %46
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %32

149:                                              ; preds = %32
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %29
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sdw_program_device_num(%struct.sdw_bus*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sdw_slave* @sdw_get_slave(%struct.sdw_bus*, i32) #1

declare dso_local i32 @sdw_modify_slave_status(%struct.sdw_slave*, i32) #1

declare dso_local i32 @sdw_handle_slave_alerts(%struct.sdw_slave*) #1

declare dso_local i32 @sdw_initialize_slave(%struct.sdw_slave*) #1

declare dso_local i32 @sdw_update_slave_status(%struct.sdw_slave*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
