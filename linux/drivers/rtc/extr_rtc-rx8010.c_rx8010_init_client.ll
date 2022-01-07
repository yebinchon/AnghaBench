; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rx8010_data = type { i32, i32 }

@RX8010_RESV17 = common dso_local global i32 0, align 4
@RX8010_RESV30 = common dso_local global i32 0, align 4
@RX8010_RESV31 = common dso_local global i32 0, align 4
@RX8010_IRQ = common dso_local global i32 0, align 4
@RX8010_FLAG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RX8010_FLAG_VLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Frequency stop was detected\0A\00", align 1
@RX8010_FLAG_AF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Alarm was detected\0A\00", align 1
@RX8010_FLAG_TF = common dso_local global i32 0, align 4
@RX8010_FLAG_UF = common dso_local global i32 0, align 4
@RX8010_CTRL_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rx8010_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.rx8010_data*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.rx8010_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.rx8010_data* %9, %struct.rx8010_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i32, i32* @RX8010_RESV17, align 4
  %12 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %10, i32 %11, i32 216)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %125

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load i32, i32* @RX8010_RESV30, align 4
  %20 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %125

25:                                               ; preds = %17
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i32, i32* @RX8010_RESV31, align 4
  %28 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %27, i32 8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %125

33:                                               ; preds = %25
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @RX8010_IRQ, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %125

41:                                               ; preds = %33
  %42 = load %struct.rx8010_data*, %struct.rx8010_data** %4, align 8
  %43 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RX8010_FLAG, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %47 = call i32 @i2c_smbus_read_i2c_block_data(i32 %44, i32 %45, i32 2, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %57, %55 ]
  store i32 %59, i32* %2, align 4
  br label %125

60:                                               ; preds = %41
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RX8010_FLAG_VLF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RX8010_FLAG_AF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RX8010_FLAG_TF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %80
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RX8010_FLAG_UF, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load i32, i32* @RX8010_FLAG_AF, align 4
  %99 = load i32, i32* @RX8010_FLAG_TF, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @RX8010_FLAG_UF, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = load i32, i32* @RX8010_FLAG, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %107, i32 %108, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %97
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %125

116:                                              ; preds = %97
  br label %117

117:                                              ; preds = %116, %94
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @RX8010_CTRL_TEST, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = load %struct.rx8010_data*, %struct.rx8010_data** %4, align 8
  %124 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %117, %114, %58, %39, %31, %23, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.rx8010_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
