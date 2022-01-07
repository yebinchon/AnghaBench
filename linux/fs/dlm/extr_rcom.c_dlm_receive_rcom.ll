; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_receive_rcom.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_dlm_receive_rcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i64, i32, i32, i32 }
%struct.dlm_rcom = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LSFL_RECOVER_STOP = common dso_local global i32 0, align 4
@DLM_RS_NODES = common dso_local global i32 0, align 4
@DLM_RS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"receive_rcom bad type %d\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"dlm_receive_rcom ignore msg %d from %d %llu %llu recover seq %llu sts %x gen %u\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"recovery message %d from %d is too short\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_receive_rcom(%struct.dlm_ls* %0, %struct.dlm_rcom* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 36, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %25 [
    i32 128, label %18
    i32 131, label %19
    i32 130, label %20
    i32 133, label %21
    i32 132, label %22
    i32 135, label %23
    i32 134, label %24
  ]

18:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %25

19:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %25

20:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %25

21:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %25

22:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %25

23:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %25

24:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %3, %24, %23, %22, %21, %20, %19, %18
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %26, i32 0, i32 3
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %30 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @LSFL_RECOVER_STOP, align 4
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 4
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 3
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %25
  %45 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %46 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 129
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %146

50:                                               ; preds = %44, %25
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %146

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @DLM_RS_NODES, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68, %65
  br label %146

75:                                               ; preds = %71, %60
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @DLM_RS_DIR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  br label %146

87:                                               ; preds = %83, %75
  %88 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %89 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %139 [
    i32 129, label %91
    i32 131, label %95
    i32 133, label %99
    i32 135, label %103
    i32 128, label %115
    i32 130, label %119
    i32 132, label %123
    i32 134, label %127
  ]

91:                                               ; preds = %87
  %92 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %93 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %94 = call i32 @receive_rcom_status(%struct.dlm_ls* %92, %struct.dlm_rcom* %93)
  br label %145

95:                                               ; preds = %87
  %96 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %97 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %98 = call i32 @receive_rcom_names(%struct.dlm_ls* %96, %struct.dlm_rcom* %97)
  br label %145

99:                                               ; preds = %87
  %100 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %101 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %102 = call i32 @receive_rcom_lookup(%struct.dlm_ls* %100, %struct.dlm_rcom* %101)
  br label %145

103:                                              ; preds = %87
  %104 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %105 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %164

111:                                              ; preds = %103
  %112 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %113 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %114 = call i32 @receive_rcom_lock(%struct.dlm_ls* %112, %struct.dlm_rcom* %113)
  br label %145

115:                                              ; preds = %87
  %116 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %117 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %118 = call i32 @receive_sync_reply(%struct.dlm_ls* %116, %struct.dlm_rcom* %117)
  br label %145

119:                                              ; preds = %87
  %120 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %121 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %122 = call i32 @receive_sync_reply(%struct.dlm_ls* %120, %struct.dlm_rcom* %121)
  br label %145

123:                                              ; preds = %87
  %124 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %125 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %126 = call i32 @receive_rcom_lookup_reply(%struct.dlm_ls* %124, %struct.dlm_rcom* %125)
  br label %145

127:                                              ; preds = %87
  %128 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %129 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %164

135:                                              ; preds = %127
  %136 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %137 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %138 = call i32 @dlm_recover_process_copy(%struct.dlm_ls* %136, %struct.dlm_rcom* %137)
  br label %145

139:                                              ; preds = %87
  %140 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %141 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %142 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %139, %135, %123, %119, %115, %111, %99, %95, %91
  br label %171

146:                                              ; preds = %86, %74, %59, %49
  %147 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %148 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %149 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %153 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %156 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %14, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %161 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @log_limit(%struct.dlm_ls* %147, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151, i64 %154, i64 %157, i64 %158, i32 %159, i32 %162)
  br label %171

164:                                              ; preds = %134, %110
  %165 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %166 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %167 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 (%struct.dlm_ls*, i8*, i32, ...) @log_error(%struct.dlm_ls* %165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %164, %146, %145
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @receive_rcom_status(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_names(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_lookup(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_lock(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_sync_reply(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @receive_rcom_lookup_reply(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @dlm_recover_process_copy(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, ...) #1

declare dso_local i32 @log_limit(%struct.dlm_ls*, i8*, i32, i32, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
