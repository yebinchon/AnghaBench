; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_device_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_device_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@device_check.cmd = internal global [6 x i8] zeroinitializer, align 1
@IMM_EPP_32 = common dso_local global i32 0, align 4
@CONNECT_EPP_MAYBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"imm: Found device at ID %i, Attempting to use %s\0A\00", align 1
@IMM_MODE_STRING = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"imm: Unable to establish communication\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"imm: Communication established at 0x%x with ID %i using %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"imm: No devices found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @device_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_check(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %179, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %182

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @IMM_EPP_32, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %147, %93, %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32, i32* @CONNECT_EPP_MAYBE, align 4
  %31 = call i32 @imm_connect(%struct.TYPE_7__* %29, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @imm_select(%struct.TYPE_7__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @imm_disconnect(%struct.TYPE_7__* %37)
  br label %179

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** @IMM_MODE_STRING, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47)
  store i32 1, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @w_ctr(i32 %49, i32 12)
  store i8 0, i8* %9, align 1
  br label %51

51:                                               ; preds = %68, %39
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load i8, i8* %9, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* @device_check.cmd, i64 0, i64 %65
  %67 = call i32 @imm_out(%struct.TYPE_7__* %61, i8* %66, i32 2)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i8, i8* %9, align 1
  %70 = add i8 %69, 1
  store i8 %70, i8* %9, align 1
  br label %51

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = call i32 @imm_disconnect(%struct.TYPE_7__* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = load i32, i32* @CONNECT_EPP_MAYBE, align 4
  %79 = call i32 @imm_connect(%struct.TYPE_7__* %77, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @imm_reset_pulse(i32 %82)
  %84 = call i32 @udelay(i32 1000)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = call i32 @imm_disconnect(%struct.TYPE_7__* %85)
  %87 = call i32 @udelay(i32 1000)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IMM_EPP_32, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %74
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %28

97:                                               ; preds = %74
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %186

101:                                              ; preds = %71
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @w_ctr(i32 %102, i32 12)
  store i32 1000000, i32* %7, align 4
  br label %104

104:                                              ; preds = %118, %101
  %105 = load i32, i32* %8, align 4
  %106 = call zeroext i8 @r_str(i32 %105)
  store i8 %106, i8* %9, align 1
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = call i32 @udelay(i32 1)
  br label %110

110:                                              ; preds = %104
  %111 = load i8, i8* %9, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 128
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi i1 [ false, %110 ], [ %117, %115 ]
  br i1 %119, label %104, label %120

120:                                              ; preds = %118
  %121 = load i8, i8* %9, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 184
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %9, align 1
  %125 = load i8, i8* %9, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 184
  br i1 %127, label %128, label %155

128:                                              ; preds = %120
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = call i32 @imm_disconnect(%struct.TYPE_7__* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = load i32, i32* @CONNECT_EPP_MAYBE, align 4
  %133 = call i32 @imm_connect(%struct.TYPE_7__* %131, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @imm_reset_pulse(i32 %136)
  %138 = call i32 @udelay(i32 1000)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = call i32 @imm_disconnect(%struct.TYPE_7__* %139)
  %141 = call i32 @udelay(i32 1000)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IMM_EPP_32, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %128
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %28

151:                                              ; preds = %128
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %186

155:                                              ; preds = %120
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = call i32 @imm_disconnect(%struct.TYPE_7__* %156)
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32*, i32** @IMM_MODE_STRING, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %159, i32 %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = load i32, i32* @CONNECT_EPP_MAYBE, align 4
  %170 = call i32 @imm_connect(%struct.TYPE_7__* %168, i32 %169)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @imm_reset_pulse(i32 %173)
  %175 = call i32 @udelay(i32 1000)
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = call i32 @imm_disconnect(%struct.TYPE_7__* %176)
  %178 = call i32 @udelay(i32 1000)
  store i32 0, i32* %2, align 4
  br label %186

179:                                              ; preds = %36
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %16

182:                                              ; preds = %16
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %184 = load i32, i32* @ENODEV, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %155, %151, %97
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @imm_connect(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @imm_select(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @imm_disconnect(%struct.TYPE_7__*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @w_ctr(i32, i32) #1

declare dso_local i32 @imm_out(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @imm_reset_pulse(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @r_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
