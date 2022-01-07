; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.w1_reg_num = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@W1_SKIP_ROM = common dso_local global i32 0, align 4
@W1_42_CHAIN = common dso_local global i32 0, align 4
@W1_42_CHAIN_ON = common dso_local global i32 0, align 4
@W1_42_CHAIN_ON_INV = common dso_local global i32 0, align 4
@W1_42_SUCCESS_CONFIRM_BYTE = common dso_local global i64 0, align 8
@W1_42_COND_READ = common dso_local global i32 0, align 4
@W1_42_FINISHED_BYTE = common dso_local global i64 0, align 8
@W1_42_CHAIN_DONE = common dso_local global i32 0, align 4
@W1_42_CHAIN_DONE_INV = common dso_local global i32 0, align 4
@W1_42_CHAIN_OFF = common dso_local global i32 0, align 4
@W1_42_CHAIN_OFF_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @w1_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_seq_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.w1_slave*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.w1_reg_num*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %16)
  store %struct.w1_slave* %17, %struct.w1_slave** %8, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %20 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %25 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i64 @w1_reset_bus(%struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %195

30:                                               ; preds = %3
  %31 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %32 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* @W1_SKIP_ROM, align 4
  %35 = call i32 @w1_write_8(%struct.TYPE_7__* %33, i32 %34)
  %36 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %37 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* @W1_42_CHAIN, align 4
  %40 = call i32 @w1_write_8(%struct.TYPE_7__* %38, i32 %39)
  %41 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %42 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* @W1_42_CHAIN_ON, align 4
  %45 = call i32 @w1_write_8(%struct.TYPE_7__* %43, i32 %44)
  %46 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %47 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* @W1_42_CHAIN_ON_INV, align 4
  %50 = call i32 @w1_write_8(%struct.TYPE_7__* %48, i32 %49)
  %51 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %52 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @msleep(i32 %55)
  %57 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %58 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i64 @w1_read_8(%struct.TYPE_7__* %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @W1_42_SUCCESS_CONFIRM_BYTE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %30
  br label %195

65:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %134, %65
  %67 = load i32, i32* %11, align 4
  %68 = icmp sle i32 %67, 64
  br i1 %68, label %69, label %137

69:                                               ; preds = %66
  %70 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %71 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i64 @w1_reset_bus(%struct.TYPE_7__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %195

76:                                               ; preds = %69
  %77 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %78 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* @W1_42_COND_READ, align 4
  %81 = call i32 @w1_write_8(%struct.TYPE_7__* %79, i32 %80)
  %82 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %83 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = bitcast i32* %13 to i64*
  %86 = call i32 @w1_read_block(%struct.TYPE_7__* %84, i64* %85, i32 8)
  store i32 %86, i32* %10, align 4
  %87 = bitcast i32* %13 to %struct.w1_reg_num*
  store %struct.w1_reg_num* %87, %struct.w1_reg_num** %14, align 8
  %88 = load %struct.w1_reg_num*, %struct.w1_reg_num** %14, align 8
  %89 = getelementptr inbounds %struct.w1_reg_num, %struct.w1_reg_num* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @W1_42_FINISHED_BYTE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  br label %137

94:                                               ; preds = %76
  %95 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %96 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.w1_reg_num*, %struct.w1_reg_num** %14, align 8
  %100 = getelementptr inbounds %struct.w1_reg_num, %struct.w1_reg_num* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %103, %94
  %106 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %107 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* @W1_42_CHAIN, align 4
  %110 = call i32 @w1_write_8(%struct.TYPE_7__* %108, i32 %109)
  %111 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %112 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* @W1_42_CHAIN_DONE, align 4
  %115 = call i32 @w1_write_8(%struct.TYPE_7__* %113, i32 %114)
  %116 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %117 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* @W1_42_CHAIN_DONE_INV, align 4
  %120 = call i32 @w1_write_8(%struct.TYPE_7__* %118, i32 %119)
  %121 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %122 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = call i32 @w1_read_block(%struct.TYPE_7__* %123, i64* %12, i32 8)
  %125 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %126 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = call i64 @w1_read_8(%struct.TYPE_7__* %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @W1_42_SUCCESS_CONFIRM_BYTE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %105
  br label %195

133:                                              ; preds = %105
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %66

137:                                              ; preds = %93, %66
  %138 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %139 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = call i64 @w1_reset_bus(%struct.TYPE_7__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %195

144:                                              ; preds = %137
  %145 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %146 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* @W1_SKIP_ROM, align 4
  %149 = call i32 @w1_write_8(%struct.TYPE_7__* %147, i32 %148)
  %150 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %151 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i32, i32* @W1_42_CHAIN, align 4
  %154 = call i32 @w1_write_8(%struct.TYPE_7__* %152, i32 %153)
  %155 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %156 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i32, i32* @W1_42_CHAIN_OFF, align 4
  %159 = call i32 @w1_write_8(%struct.TYPE_7__* %157, i32 %158)
  %160 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %161 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* @W1_42_CHAIN_OFF_INV, align 4
  %164 = call i32 @w1_write_8(%struct.TYPE_7__* %162, i32 %163)
  %165 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %166 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = call i64 @w1_read_8(%struct.TYPE_7__* %167)
  store i64 %168, i64* %12, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* @W1_42_SUCCESS_CONFIRM_BYTE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %144
  br label %195

173:                                              ; preds = %144
  %174 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %175 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i8*, i8** %7, align 8
  %180 = load i32, i32* @PAGE_SIZE, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = sub i64 0, %184
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @snprintf(i8* %186, i32 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 %190, %189
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %4, align 4
  br label %203

195:                                              ; preds = %172, %143, %132, %75, %64, %29
  %196 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %197 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %195, %173
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_bus(%struct.TYPE_7__*) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @w1_read_8(%struct.TYPE_7__*) #1

declare dso_local i32 @w1_read_block(%struct.TYPE_7__*, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
