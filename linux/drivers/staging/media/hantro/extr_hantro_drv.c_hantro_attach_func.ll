; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_attach_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_attach_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { %struct.media_device }
%struct.media_device = type { i32 }
%struct.hantro_func = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__, i32, %struct.TYPE_6__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.media_link = type { i32 }

@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@MEDIA_ENT_F_IO_V4L = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@MEDIA_INTF_T_V4L_VIDEO = common dso_local global i32 0, align 4
@VIDEO_MAJOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hantro_dev*, %struct.hantro_func*)* @hantro_attach_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_attach_func(%struct.hantro_dev* %0, %struct.hantro_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca %struct.hantro_func*, align 8
  %6 = alloca %struct.media_device*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca i32, align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %4, align 8
  store %struct.hantro_func* %1, %struct.hantro_func** %5, align 8
  %9 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %9, i32 0, i32 0
  store %struct.media_device* %10, %struct.media_device** %6, align 8
  %11 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %12 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %13 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load %struct.media_device*, %struct.media_device** %6, align 8
  %16 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %17 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %20 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %19, i32 0, i32 7
  %21 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %22 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %23 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %22, i32 0, i32 0
  %24 = call i32 @hantro_register_entity(%struct.media_device* %15, i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %20, i32 1, i32 %21, %struct.TYPE_7__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %182

29:                                               ; preds = %2
  %30 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %31 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %32 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %31, i32 0, i32 6
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  %36 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %37 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %38 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %37, i32 0, i32 6
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load %struct.media_device*, %struct.media_device** %6, align 8
  %43 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %44 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %43, i32 0, i32 1
  %45 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %46 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %45, i32 0, i32 6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %49 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %52 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %51, i32 0, i32 0
  %53 = call i32 @hantro_register_entity(%struct.media_device* %42, i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %47, i32 2, i32 %50, %struct.TYPE_7__* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %29
  br label %176

57:                                               ; preds = %29
  %58 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %59 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %60 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.media_device*, %struct.media_device** %6, align 8
  %63 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %64 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %63, i32 0, i32 2
  %65 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %66 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %65, i32 0, i32 4
  %67 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %68 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %69 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %68, i32 0, i32 0
  %70 = call i32 @hantro_register_entity(%struct.media_device* %62, i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %66, i32 1, i32 %67, %struct.TYPE_7__* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %172

74:                                               ; preds = %57
  %75 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %76 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %79 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %78, i32 0, i32 1
  %80 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %81 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @media_create_pad_link(i32* %77, i32 0, i32* %79, i32 1, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %168

87:                                               ; preds = %74
  %88 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %89 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %88, i32 0, i32 1
  %90 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %91 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %90, i32 0, i32 2
  %92 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %93 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @media_create_pad_link(i32* %89, i32 0, i32* %91, i32 0, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %160

99:                                               ; preds = %87
  %100 = load %struct.media_device*, %struct.media_device** %6, align 8
  %101 = load i32, i32* @MEDIA_INTF_T_V4L_VIDEO, align 4
  %102 = load i32, i32* @VIDEO_MAJOR, align 4
  %103 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %104 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_5__* @media_devnode_create(%struct.media_device* %100, i32 %101, i32 0, i32 %102, i32 %106)
  %108 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %109 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %108, i32 0, i32 3
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %109, align 8
  %110 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %111 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = icmp ne %struct.TYPE_5__* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %156

117:                                              ; preds = %99
  %118 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %119 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %122 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %126 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %127 = or i32 %125, %126
  %128 = call %struct.media_link* @media_create_intf_link(i32* %120, i32* %124, i32 %127)
  store %struct.media_link* %128, %struct.media_link** %7, align 8
  %129 = load %struct.media_link*, %struct.media_link** %7, align 8
  %130 = icmp ne %struct.media_link* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %117
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %151

134:                                              ; preds = %117
  %135 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %136 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %135, i32 0, i32 2
  %137 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %138 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %142 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %143 = or i32 %141, %142
  %144 = call %struct.media_link* @media_create_intf_link(i32* %136, i32* %140, i32 %143)
  store %struct.media_link* %144, %struct.media_link** %7, align 8
  %145 = load %struct.media_link*, %struct.media_link** %7, align 8
  %146 = icmp ne %struct.media_link* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %134
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %151

150:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %182

151:                                              ; preds = %147, %131
  %152 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %153 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %152, i32 0, i32 3
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = call i32 @media_devnode_remove(%struct.TYPE_5__* %154)
  br label %156

156:                                              ; preds = %151, %114
  %157 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %158 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %157, i32 0, i32 2
  %159 = call i32 @media_entity_remove_links(i32* %158)
  br label %160

160:                                              ; preds = %156, %98
  %161 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %162 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %161, i32 0, i32 1
  %163 = call i32 @media_entity_remove_links(i32* %162)
  %164 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %165 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = call i32 @media_entity_remove_links(i32* %166)
  br label %168

168:                                              ; preds = %160, %86
  %169 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %170 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %169, i32 0, i32 2
  %171 = call i32 @media_device_unregister_entity(i32* %170)
  br label %172

172:                                              ; preds = %168, %73
  %173 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %174 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %173, i32 0, i32 1
  %175 = call i32 @media_device_unregister_entity(i32* %174)
  br label %176

176:                                              ; preds = %172, %56
  %177 = load %struct.hantro_func*, %struct.hantro_func** %5, align 8
  %178 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = call i32 @media_device_unregister_entity(i32* %179)
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %176, %150, %27
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @hantro_register_entity(%struct.media_device*, i32*, i8*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @media_devnode_create(%struct.media_device*, i32, i32, i32, i32) #1

declare dso_local %struct.media_link* @media_create_intf_link(i32*, i32*, i32) #1

declare dso_local i32 @media_devnode_remove(%struct.TYPE_5__*) #1

declare dso_local i32 @media_entity_remove_links(i32*) #1

declare dso_local i32 @media_device_unregister_entity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
