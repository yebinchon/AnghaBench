; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_sourcesink_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_sourcesink_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_sourcesink = type { i32, i32, i32, i32, %struct.TYPE_36__*, %struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_34__* }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32 }

@source_sink_intf_alt0 = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@source_sink_intf_alt1 = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@fs_source_desc = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: can't autoconfigure on %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@fs_sink_desc = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@fs_iso_source_desc = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@fs_iso_sink_desc = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@fs_source_sink_descs = common dso_local global i32** null, align 8
@FS_ALT_IFC_1_OFFSET = common dso_local global i64 0, align 8
@hs_source_sink_descs = common dso_local global i32** null, align 8
@HS_ALT_IFC_1_OFFSET = common dso_local global i64 0, align 8
@ss_source_sink_descs = common dso_local global i32** null, align 8
@SS_ALT_IFC_1_OFFSET = common dso_local global i64 0, align 8
@hs_source_desc = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@hs_sink_desc = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@hs_iso_source_desc = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@hs_iso_sink_desc = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@ss_source_desc = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@ss_sink_desc = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@ss_iso_source_desc = common dso_local global %struct.TYPE_42__ zeroinitializer, align 4
@ss_iso_source_comp_desc = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@ss_iso_sink_desc = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@ss_iso_sink_comp_desc = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s speed %s: IN/%s, OUT/%s, ISO-IN/%s, ISO-OUT/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @sourcesink_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sourcesink_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.f_sourcesink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %10 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %11 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %10, i32 0, i32 0
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %11, align 8
  store %struct.usb_composite_dev* %12, %struct.usb_composite_dev** %6, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = call %struct.f_sourcesink* @func_to_ss(%struct.usb_function* %13)
  store %struct.f_sourcesink* %14, %struct.f_sourcesink** %7, align 8
  %15 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %16 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %17 = call i32 @usb_interface_id(%struct.usb_configuration* %15, %struct.usb_function* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %327

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @source_sink_intf_alt0, i32 0, i32 0), align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @source_sink_intf_alt1, i32 0, i32 0), align 4
  %25 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %26 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  %28 = call i8* @usb_ep_autoconfig(%struct.TYPE_38__* %27, %struct.TYPE_39__* @fs_source_desc)
  %29 = bitcast i8* %28 to %struct.TYPE_34__*
  %30 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %31 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %30, i32 0, i32 7
  store %struct.TYPE_34__* %29, %struct.TYPE_34__** %31, align 8
  %32 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %33 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %32, i32 0, i32 7
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %33, align 8
  %35 = icmp ne %struct.TYPE_34__* %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %62, %36
  %38 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %39 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %40 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %43 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ERROR(%struct.usb_composite_dev* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %327

50:                                               ; preds = %22
  %51 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %52 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_38__*, %struct.TYPE_38__** %52, align 8
  %54 = call i8* @usb_ep_autoconfig(%struct.TYPE_38__* %53, %struct.TYPE_39__* @fs_sink_desc)
  %55 = bitcast i8* %54 to %struct.TYPE_35__*
  %56 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %57 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %56, i32 0, i32 6
  store %struct.TYPE_35__* %55, %struct.TYPE_35__** %57, align 8
  %58 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %59 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %58, i32 0, i32 6
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %59, align 8
  %61 = icmp ne %struct.TYPE_35__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %37

63:                                               ; preds = %50
  %64 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %65 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %70 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %73 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 16
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %78 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %77, i32 0, i32 0
  store i32 16, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %81 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %86 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %85, i32 0, i32 1
  store i32 2, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %89 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 15
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %94 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %93, i32 0, i32 2
  store i32 15, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %97 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 1023
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %105

101:                                              ; preds = %95
  %102 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %103 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %101, %100
  %106 = phi i32 [ 1023, %100 ], [ %104, %101 ]
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_source_desc, i32 0, i32 0), align 4
  %107 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %108 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_source_desc, i32 0, i32 1), align 4
  %110 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %111 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1023
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %119

115:                                              ; preds = %105
  %116 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %117 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  br label %119

119:                                              ; preds = %115, %114
  %120 = phi i32 [ 1023, %114 ], [ %118, %115 ]
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_sink_desc, i32 0, i32 0), align 4
  %121 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %122 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_sink_desc, i32 0, i32 1), align 4
  %124 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %125 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %125, align 8
  %127 = call i8* @usb_ep_autoconfig(%struct.TYPE_38__* %126, %struct.TYPE_39__* @fs_iso_source_desc)
  %128 = bitcast i8* %127 to %struct.TYPE_37__*
  %129 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %130 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %129, i32 0, i32 5
  store %struct.TYPE_37__* %128, %struct.TYPE_37__** %130, align 8
  %131 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %132 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %131, i32 0, i32 5
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %132, align 8
  %134 = icmp ne %struct.TYPE_37__* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %119
  br label %155

136:                                              ; preds = %119
  %137 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %138 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %138, align 8
  %140 = call i8* @usb_ep_autoconfig(%struct.TYPE_38__* %139, %struct.TYPE_39__* @fs_iso_sink_desc)
  %141 = bitcast i8* %140 to %struct.TYPE_36__*
  %142 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %143 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %142, i32 0, i32 4
  store %struct.TYPE_36__* %141, %struct.TYPE_36__** %143, align 8
  %144 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %145 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %144, i32 0, i32 4
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %145, align 8
  %147 = icmp ne %struct.TYPE_36__* %146, null
  br i1 %147, label %165, label %148

148:                                              ; preds = %136
  %149 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %150 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %149, i32 0, i32 5
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %150, align 8
  %152 = call i32 @usb_ep_autoconfig_release(%struct.TYPE_37__* %151)
  %153 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %154 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %153, i32 0, i32 5
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %154, align 8
  br label %155

155:                                              ; preds = %148, %135
  %156 = load i32**, i32*** @fs_source_sink_descs, align 8
  %157 = load i64, i64* @FS_ALT_IFC_1_OFFSET, align 8
  %158 = getelementptr inbounds i32*, i32** %156, i64 %157
  store i32* null, i32** %158, align 8
  %159 = load i32**, i32*** @hs_source_sink_descs, align 8
  %160 = load i64, i64* @HS_ALT_IFC_1_OFFSET, align 8
  %161 = getelementptr inbounds i32*, i32** %159, i64 %160
  store i32* null, i32** %161, align 8
  %162 = load i32**, i32*** @ss_source_sink_descs, align 8
  %163 = load i64, i64* @SS_ALT_IFC_1_OFFSET, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %155, %136
  %166 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %167 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 1024
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %172 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %171, i32 0, i32 3
  store i32 1024, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_source_desc, i32 0, i32 2), align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @hs_source_desc, i32 0, i32 0), align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_sink_desc, i32 0, i32 2), align 4
  store i32 %175, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @hs_sink_desc, i32 0, i32 0), align 4
  %176 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %177 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @hs_iso_source_desc, i32 0, i32 0), align 4
  %179 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %180 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 11
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @hs_iso_source_desc, i32 0, i32 0), align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @hs_iso_source_desc, i32 0, i32 0), align 4
  %185 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %186 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @hs_iso_source_desc, i32 0, i32 1), align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_source_desc, i32 0, i32 2), align 4
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @hs_iso_source_desc, i32 0, i32 2), align 4
  %189 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %190 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @hs_iso_sink_desc, i32 0, i32 0), align 4
  %192 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %193 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 11
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @hs_iso_sink_desc, i32 0, i32 0), align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @hs_iso_sink_desc, i32 0, i32 0), align 4
  %198 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %199 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @hs_iso_sink_desc, i32 0, i32 1), align 4
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_sink_desc, i32 0, i32 2), align 4
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @hs_iso_sink_desc, i32 0, i32 2), align 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_source_desc, i32 0, i32 2), align 4
  store i32 %202, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @ss_source_desc, i32 0, i32 0), align 4
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_sink_desc, i32 0, i32 2), align 4
  store i32 %203, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @ss_sink_desc, i32 0, i32 0), align 4
  %204 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %205 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @ss_iso_source_desc, i32 0, i32 0), align 4
  %207 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %208 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @ss_iso_source_desc, i32 0, i32 1), align 4
  %210 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %211 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ss_iso_source_comp_desc, i32 0, i32 0), align 4
  %213 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %214 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ss_iso_source_comp_desc, i32 0, i32 1), align 4
  %216 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %217 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %220 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  %223 = mul nsw i32 %218, %222
  %224 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %225 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  %228 = mul nsw i32 %223, %227
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ss_iso_source_comp_desc, i32 0, i32 2), align 4
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_source_desc, i32 0, i32 2), align 4
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_42__, %struct.TYPE_42__* @ss_iso_source_desc, i32 0, i32 2), align 4
  %230 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %231 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ss_iso_sink_desc, i32 0, i32 0), align 4
  %233 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %234 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  store i32 %235, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ss_iso_sink_desc, i32 0, i32 1), align 4
  %236 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %237 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @ss_iso_sink_comp_desc, i32 0, i32 0), align 4
  %239 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %240 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @ss_iso_sink_comp_desc, i32 0, i32 1), align 4
  %242 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %243 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %246 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  %249 = mul nsw i32 %244, %248
  %250 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %251 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  %254 = mul nsw i32 %249, %253
  store i32 %254, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @ss_iso_sink_comp_desc, i32 0, i32 2), align 4
  %255 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @fs_iso_sink_desc, i32 0, i32 2), align 4
  store i32 %255, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ss_iso_sink_desc, i32 0, i32 2), align 4
  %256 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %257 = load i32**, i32*** @fs_source_sink_descs, align 8
  %258 = load i32**, i32*** @hs_source_sink_descs, align 8
  %259 = load i32**, i32*** @ss_source_sink_descs, align 8
  %260 = call i32 @usb_assign_descriptors(%struct.usb_function* %256, i32** %257, i32** %258, i32** %259, i32* null)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %173
  %264 = load i32, i32* %9, align 4
  store i32 %264, i32* %3, align 4
  br label %327

265:                                              ; preds = %173
  %266 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %267 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %268 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %267, i32 0, i32 0
  %269 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %268, align 8
  %270 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %269, i32 0, i32 0
  %271 = load %struct.TYPE_38__*, %struct.TYPE_38__** %270, align 8
  %272 = call i64 @gadget_is_superspeed(%struct.TYPE_38__* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  br label %285

275:                                              ; preds = %265
  %276 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %277 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %276, i32 0, i32 0
  %278 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %277, align 8
  %279 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %278, i32 0, i32 0
  %280 = load %struct.TYPE_38__*, %struct.TYPE_38__** %279, align 8
  %281 = call i64 @gadget_is_dualspeed(%struct.TYPE_38__* %280)
  %282 = icmp ne i64 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %285

285:                                              ; preds = %275, %274
  %286 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %274 ], [ %284, %275 ]
  %287 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %288 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %291 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %290, i32 0, i32 7
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %296 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %295, i32 0, i32 6
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %301 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %300, i32 0, i32 5
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** %301, align 8
  %303 = icmp ne %struct.TYPE_37__* %302, null
  br i1 %303, label %304, label %310

304:                                              ; preds = %285
  %305 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %306 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %305, i32 0, i32 5
  %307 = load %struct.TYPE_37__*, %struct.TYPE_37__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  br label %311

310:                                              ; preds = %285
  br label %311

311:                                              ; preds = %310, %304
  %312 = phi i8* [ %309, %304 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %310 ]
  %313 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %314 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %313, i32 0, i32 4
  %315 = load %struct.TYPE_36__*, %struct.TYPE_36__** %314, align 8
  %316 = icmp ne %struct.TYPE_36__* %315, null
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load %struct.f_sourcesink*, %struct.f_sourcesink** %7, align 8
  %319 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %318, i32 0, i32 4
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  br label %324

323:                                              ; preds = %311
  br label %324

324:                                              ; preds = %323, %317
  %325 = phi i8* [ %322, %317 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %323 ]
  %326 = call i32 @DBG(%struct.usb_composite_dev* %266, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %286, i32 %289, i32 %294, i32 %299, i8* %312, i8* %325)
  store i32 0, i32* %3, align 4
  br label %327

327:                                              ; preds = %324, %263, %37, %20
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local %struct.f_sourcesink* @func_to_ss(%struct.usb_function*) #1

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local i8* @usb_ep_autoconfig(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_autoconfig_release(%struct.TYPE_37__*) #1

declare dso_local i32 @usb_assign_descriptors(%struct.usb_function*, i32**, i32**, i32**, i32*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i64 @gadget_is_superspeed(%struct.TYPE_38__*) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
