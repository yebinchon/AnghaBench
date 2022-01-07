; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_suncore.c_sunserial_console_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_suncore.c_sunserial_console_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }
%struct.device_node = type { i32 }

@__const.sunserial_console_termios.mode_prop = private unnamed_addr constant [10 x i8] c"ttyX-mode\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"rsc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rsc-console\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rsc-control\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ssp-console-modes\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"115200,8,n,1,-\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lom-console\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"9600,8,n,1,-\00", align 1
@of_console_options = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@B150 = common dso_local global i32 0, align 4
@B300 = common dso_local global i32 0, align 4
@B600 = common dso_local global i32 0, align 4
@B1200 = common dso_local global i32 0, align 4
@B2400 = common dso_local global i32 0, align 4
@B4800 = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@B19200 = common dso_local global i32 0, align 4
@B38400 = common dso_local global i32 0, align 4
@B57600 = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@B230400 = common dso_local global i32 0, align 4
@B460800 = common dso_local global i32 0, align 4
@CS5 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunserial_console_termios(%struct.console* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.console*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca i8, align 1
  store %struct.console* %0, %struct.console** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %15 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.sunserial_console_termios.mode_prop, i32 0, i32 0), i64 10, i1 false)
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i64 @of_node_name_eq(%struct.device_node* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i64 @of_node_name_eq(%struct.device_node* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i64 @of_node_name_eq(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %19, %2
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i8* @of_get_property(%struct.device_node* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %33

33:                                               ; preds = %32, %27
  br label %59

34:                                               ; preds = %23
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = call i64 @of_node_name_eq(%struct.device_node* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %58

39:                                               ; preds = %34
  store i8 97, i8* %14, align 1
  %40 = load i8*, i8** @of_console_options, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** @of_console_options, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %14, align 1
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8, i8* %14, align 1
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 %46, i8* %47, align 1
  %48 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store %struct.device_node* %48, %struct.device_node** %13, align 8
  %49 = load %struct.device_node*, %struct.device_node** %13, align 8
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %51 = call i8* @of_get_property(%struct.device_node* %49, i8* %50, i32* null)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.device_node*, %struct.device_node** %13, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  br label %58

58:                                               ; preds = %55, %38
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* @CREAD, align 4
  %61 = load i32, i32* @HUPCL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CLOCAL, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @simple_strtoul(i8* %66, i32* null, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 44)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  %72 = call i32 @simple_strtoul(i8* %71, i32* null, i32 0)
  store i32 %72, i32* %9, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 44)
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %12, align 1
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 44)
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = call i32 @simple_strtoul(i8* %81, i32* null, i32 0)
  store i32 %82, i32* %10, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 44)
  store i8* %84, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  switch i32 %85, label %138 [
    i32 150, label %86
    i32 300, label %90
    i32 600, label %94
    i32 1200, label %98
    i32 2400, label %102
    i32 4800, label %106
    i32 9600, label %110
    i32 19200, label %114
    i32 38400, label %118
    i32 57600, label %122
    i32 115200, label %126
    i32 230400, label %130
    i32 460800, label %134
  ]

86:                                               ; preds = %59
  %87 = load i32, i32* @B150, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %142

90:                                               ; preds = %59
  %91 = load i32, i32* @B300, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %142

94:                                               ; preds = %59
  %95 = load i32, i32* @B600, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %142

98:                                               ; preds = %59
  %99 = load i32, i32* @B1200, align 4
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %142

102:                                              ; preds = %59
  %103 = load i32, i32* @B2400, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %142

106:                                              ; preds = %59
  %107 = load i32, i32* @B4800, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %142

110:                                              ; preds = %59
  %111 = load i32, i32* @B9600, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %142

114:                                              ; preds = %59
  %115 = load i32, i32* @B19200, align 4
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %142

118:                                              ; preds = %59
  %119 = load i32, i32* @B38400, align 4
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %142

122:                                              ; preds = %59
  %123 = load i32, i32* @B57600, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %142

126:                                              ; preds = %59
  %127 = load i32, i32* @B115200, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %142

130:                                              ; preds = %59
  %131 = load i32, i32* @B230400, align 4
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %142

134:                                              ; preds = %59
  %135 = load i32, i32* @B460800, align 4
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %142

138:                                              ; preds = %59
  store i32 9600, i32* %8, align 4
  %139 = load i32, i32* @B9600, align 4
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86
  %143 = load i32, i32* %9, align 4
  switch i32 %143, label %160 [
    i32 5, label %144
    i32 6, label %148
    i32 7, label %152
    i32 8, label %156
  ]

144:                                              ; preds = %142
  %145 = load i32, i32* @CS5, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %164

148:                                              ; preds = %142
  %149 = load i32, i32* @CS6, align 4
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %164

152:                                              ; preds = %142
  %153 = load i32, i32* @CS7, align 4
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %11, align 4
  br label %164

156:                                              ; preds = %142
  %157 = load i32, i32* @CS8, align 4
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %11, align 4
  br label %164

160:                                              ; preds = %142
  %161 = load i32, i32* @CS8, align 4
  %162 = load i32, i32* %11, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %160, %156, %152, %148, %144
  %165 = load i8, i8* %12, align 1
  %166 = sext i8 %165 to i32
  switch i32 %166, label %178 [
    i32 111, label %167
    i32 101, label %173
    i32 110, label %177
  ]

167:                                              ; preds = %164
  %168 = load i32, i32* @PARENB, align 4
  %169 = load i32, i32* @PARODD, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %11, align 4
  br label %179

173:                                              ; preds = %164
  %174 = load i32, i32* @PARENB, align 4
  %175 = load i32, i32* %11, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %11, align 4
  br label %179

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %164, %177
  br label %179

179:                                              ; preds = %178, %173, %167
  %180 = load i32, i32* %10, align 4
  switch i32 %180, label %186 [
    i32 2, label %181
    i32 1, label %185
  ]

181:                                              ; preds = %179
  %182 = load i32, i32* @CSTOPB, align 4
  %183 = load i32, i32* %11, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %11, align 4
  br label %187

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %179, %185
  br label %187

187:                                              ; preds = %186, %181
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.console*, %struct.console** %3, align 8
  %190 = getelementptr inbounds %struct.console, %struct.console* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #2

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
