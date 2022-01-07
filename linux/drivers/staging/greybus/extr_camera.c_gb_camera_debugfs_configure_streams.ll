; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_debugfs_configure_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_debugfs_configure_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gb_camera_debugfs_buffer* }
%struct.gb_camera_debugfs_buffer = type { i64, i64 }
%struct.gb_camera_stream_config = type { i32, i32, i32, i32, i32*, i32 }

@GB_CAMERA_DEBUGFS_BUFFER_STREAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_CAMERA_MAX_STREAMS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%u;%u;\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%u;%u;%u;%u;%u;%u;%u;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, i8*, i64)* @gb_camera_debugfs_configure_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_debugfs_configure_streams(%struct.gb_camera* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_camera*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_camera_debugfs_buffer*, align 8
  %9 = alloca %struct.gb_camera_stream_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.gb_camera_stream_config*, align 8
  %16 = alloca %struct.gb_camera_stream_config*, align 8
  store %struct.gb_camera* %0, %struct.gb_camera** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %18 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %19, align 8
  %21 = load i64, i64* @GB_CAMERA_DEBUGFS_BUFFER_STREAMS, align 8
  %22 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %20, i64 %21
  store %struct.gb_camera_debugfs_buffer* %22, %struct.gb_camera_debugfs_buffer** %8, align 8
  %23 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %192

29:                                               ; preds = %3
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @kstrtouint(i8* %30, i32 10, i32* %10)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %4, align 4
  br label %192

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GB_CAMERA_MAX_STREAMS, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %192

43:                                               ; preds = %36
  %44 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %192

50:                                               ; preds = %43
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @kstrtouint(i8* %51, i32 10, i32* %11)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %4, align 4
  br label %192

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.gb_camera_stream_config* @kcalloc(i32 %58, i32 32, i32 %59)
  store %struct.gb_camera_stream_config* %60, %struct.gb_camera_stream_config** %9, align 8
  %61 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %9, align 8
  %62 = icmp ne %struct.gb_camera_stream_config* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %192

66:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %117, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %67
  %72 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %72, i64 %74
  store %struct.gb_camera_stream_config* %75, %struct.gb_camera_stream_config** %15, align 8
  %76 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %188

82:                                               ; preds = %71
  %83 = load i8*, i8** %13, align 8
  %84 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %15, align 8
  %85 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %84, i32 0, i32 0
  %86 = call i32 @kstrtouint(i8* %83, i32 10, i32* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %188

90:                                               ; preds = %82
  %91 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %188

95:                                               ; preds = %90
  %96 = load i8*, i8** %13, align 8
  %97 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %15, align 8
  %98 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %97, i32 0, i32 1
  %99 = call i32 @kstrtouint(i8* %96, i32 10, i32* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %188

103:                                              ; preds = %95
  %104 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %188

108:                                              ; preds = %103
  %109 = load i8*, i8** %13, align 8
  %110 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %15, align 8
  %111 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %110, i32 0, i32 2
  %112 = call i32 @kstrtouint(i8* %109, i32 16, i32* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %188

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %67

120:                                              ; preds = %67
  %121 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %122 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %9, align 8
  %123 = call i32 @gb_camera_configure_streams(%struct.gb_camera* %121, i32* %10, i32* %11, %struct.gb_camera_stream_config* %122, i32* null)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %188

127:                                              ; preds = %120
  %128 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %129 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i64 (i64, i8*, i32, i32, ...) @sprintf(i64 %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %135 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %182, %127
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %185

140:                                              ; preds = %136
  %141 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %9, align 8
  %142 = load i32, i32* %12, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %141, i64 %143
  store %struct.gb_camera_stream_config* %144, %struct.gb_camera_stream_config** %16, align 8
  %145 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %146 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %149 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %153 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %156 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %159 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %162 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %165 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %170 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %16, align 8
  %175 = getelementptr inbounds %struct.gb_camera_stream_config, %struct.gb_camera_stream_config* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = call i64 (i64, i8*, i32, i32, ...) @sprintf(i64 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %157, i32 %160, i32 %163, i32 %168, i32 %173, i32 %176)
  %178 = load %struct.gb_camera_debugfs_buffer*, %struct.gb_camera_debugfs_buffer** %8, align 8
  %179 = getelementptr inbounds %struct.gb_camera_debugfs_buffer, %struct.gb_camera_debugfs_buffer* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %140
  %183 = load i32, i32* %12, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %136

185:                                              ; preds = %136
  %186 = load i64, i64* %7, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %185, %126, %115, %107, %102, %94, %89, %79
  %189 = load %struct.gb_camera_stream_config*, %struct.gb_camera_stream_config** %9, align 8
  %190 = call i32 @kfree(%struct.gb_camera_stream_config* %189)
  %191 = load i32, i32* %14, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %188, %63, %55, %47, %40, %34, %26
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.gb_camera_stream_config* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gb_camera_configure_streams(%struct.gb_camera*, i32*, i32*, %struct.gb_camera_stream_config*, i32*) #1

declare dso_local i64 @sprintf(i64, i8*, i32, i32, ...) #1

declare dso_local i32 @kfree(%struct.gb_camera_stream_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
