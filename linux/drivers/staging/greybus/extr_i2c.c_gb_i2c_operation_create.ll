; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_operation_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_operation_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.gb_i2c_transfer_request* }
%struct.gb_i2c_transfer_request = type { %struct.gb_i2c_transfer_op*, i32 }
%struct.gb_i2c_transfer_op = type { i32 }
%struct.gb_connection = type { i32 }
%struct.i2c_msg = type { i32, i64, i32 }
%struct.gb_i2c_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@U16_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"msg_count (%u) too big\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@GB_I2C_TYPE_TRANSFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_operation* (%struct.gb_connection*, %struct.i2c_msg*, i64)* @gb_i2c_operation_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_operation* @gb_i2c_operation_create(%struct.gb_connection* %0, %struct.i2c_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.gb_operation*, align 8
  %5 = alloca %struct.gb_connection*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_i2c_device*, align 8
  %9 = alloca %struct.gb_i2c_transfer_request*, align 8
  %10 = alloca %struct.gb_operation*, align 8
  %11 = alloca %struct.gb_i2c_transfer_op*, align 8
  %12 = alloca %struct.i2c_msg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %20 = call %struct.gb_i2c_device* @gb_connection_get_data(%struct.gb_connection* %19)
  store %struct.gb_i2c_device* %20, %struct.gb_i2c_device** %8, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @U16_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %8, align 8
  %26 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %29)
  store %struct.gb_operation* null, %struct.gb_operation** %4, align 8
  br label %152

31:                                               ; preds = %3
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %17, align 8
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %33, %struct.i2c_msg** %12, align 8
  store i64 0, i64* %18, align 8
  br label %34

34:                                               ; preds = %58, %31
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_M_RD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %14, align 8
  br label %57

51:                                               ; preds = %38
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %18, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %18, align 8
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 1
  store %struct.i2c_msg* %62, %struct.i2c_msg** %12, align 8
  br label %34

63:                                               ; preds = %34
  store i64 16, i64* %15, align 8
  %64 = load i64, i64* %7, align 8
  %65 = mul i64 %64, 4
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %15, align 8
  %71 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %72 = load i32, i32* @GB_I2C_TYPE_TRANSFER, align 4
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.gb_operation* @gb_operation_create(%struct.gb_connection* %71, i32 %72, i64 %73, i64 %74, i32 %75)
  store %struct.gb_operation* %76, %struct.gb_operation** %10, align 8
  %77 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  %78 = icmp ne %struct.gb_operation* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %63
  store %struct.gb_operation* null, %struct.gb_operation** %4, align 8
  br label %152

80:                                               ; preds = %63
  %81 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  %82 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.gb_i2c_transfer_request*, %struct.gb_i2c_transfer_request** %84, align 8
  store %struct.gb_i2c_transfer_request* %85, %struct.gb_i2c_transfer_request** %9, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @cpu_to_le16(i64 %86)
  %88 = load %struct.gb_i2c_transfer_request*, %struct.gb_i2c_transfer_request** %9, align 8
  %89 = getelementptr inbounds %struct.gb_i2c_transfer_request, %struct.gb_i2c_transfer_request* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.gb_i2c_transfer_request*, %struct.gb_i2c_transfer_request** %9, align 8
  %91 = getelementptr inbounds %struct.gb_i2c_transfer_request, %struct.gb_i2c_transfer_request* %90, i32 0, i32 0
  %92 = load %struct.gb_i2c_transfer_op*, %struct.gb_i2c_transfer_op** %91, align 8
  %93 = getelementptr inbounds %struct.gb_i2c_transfer_op, %struct.gb_i2c_transfer_op* %92, i64 0
  store %struct.gb_i2c_transfer_op* %93, %struct.gb_i2c_transfer_op** %11, align 8
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %94, %struct.i2c_msg** %12, align 8
  store i64 0, i64* %18, align 8
  br label %95

95:                                               ; preds = %107, %80
  %96 = load i64, i64* %18, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.gb_i2c_transfer_op*, %struct.gb_i2c_transfer_op** %11, align 8
  %101 = getelementptr inbounds %struct.gb_i2c_transfer_op, %struct.gb_i2c_transfer_op* %100, i32 1
  store %struct.gb_i2c_transfer_op* %101, %struct.gb_i2c_transfer_op** %11, align 8
  %102 = ptrtoint %struct.gb_i2c_transfer_op* %100 to i32
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 1
  store %struct.i2c_msg* %104, %struct.i2c_msg** %12, align 8
  %105 = ptrtoint %struct.i2c_msg* %103 to i32
  %106 = call i32 @gb_i2c_fill_transfer_op(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %99
  %108 = load i64, i64* %18, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %18, align 8
  br label %95

110:                                              ; preds = %95
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  store %struct.gb_operation* %114, %struct.gb_operation** %4, align 8
  br label %152

115:                                              ; preds = %110
  %116 = load %struct.gb_i2c_transfer_op*, %struct.gb_i2c_transfer_op** %11, align 8
  %117 = bitcast %struct.gb_i2c_transfer_op* %116 to i8*
  store i8* %117, i8** %16, align 8
  %118 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  store %struct.i2c_msg* %118, %struct.i2c_msg** %12, align 8
  store i64 0, i64* %18, align 8
  br label %119

119:                                              ; preds = %147, %115
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @I2C_M_RD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %123
  %131 = load i8*, i8** %16, align 8
  %132 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @memcpy(i8* %131, i32 %134, i64 %137)
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i8*, i8** %16, align 8
  %143 = getelementptr i8, i8* %142, i64 %141
  store i8* %143, i8** %16, align 8
  br label %144

144:                                              ; preds = %130, %123
  %145 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 1
  store %struct.i2c_msg* %146, %struct.i2c_msg** %12, align 8
  br label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %18, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %18, align 8
  br label %119

150:                                              ; preds = %119
  %151 = load %struct.gb_operation*, %struct.gb_operation** %10, align 8
  store %struct.gb_operation* %151, %struct.gb_operation** %4, align 8
  br label %152

152:                                              ; preds = %150, %113, %79, %24
  %153 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  ret %struct.gb_operation* %153
}

declare dso_local %struct.gb_i2c_device* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local %struct.gb_operation* @gb_operation_create(%struct.gb_connection*, i32, i64, i64, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @gb_i2c_fill_transfer_op(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
