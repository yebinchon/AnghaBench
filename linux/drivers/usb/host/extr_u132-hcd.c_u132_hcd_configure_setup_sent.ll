; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_configure_setup_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_configure_setup_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.u132_endp = type { i64, i32, %struct.u132_ring*, i64, %struct.u132* }
%struct.u132_ring = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@u132_hcd_configure_input_recv = common dso_local global i32 0, align 4
@u132_hcd_configure_empty_recv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_configure_setup_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_configure_setup_sent(i8* %0, %struct.urb* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.u132_endp*, align 8
  %26 = alloca %struct.u132*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.u132_ring*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.u132_ring*, align 8
  store i8* %0, i8** %13, align 8
  store %struct.urb* %1, %struct.urb** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %32 = load i8*, i8** %13, align 8
  %33 = bitcast i8* %32 to %struct.u132_endp*
  store %struct.u132_endp* %33, %struct.u132_endp** %25, align 8
  %34 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %35 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %34, i32 0, i32 4
  %36 = load %struct.u132*, %struct.u132** %35, align 8
  store %struct.u132* %36, %struct.u132** %26, align 8
  %37 = load %struct.u132*, %struct.u132** %26, align 8
  %38 = getelementptr inbounds %struct.u132, %struct.u132* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %41 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %27, align 4
  %46 = load %struct.u132*, %struct.u132** %26, align 8
  %47 = getelementptr inbounds %struct.u132, %struct.u132* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.u132*, %struct.u132** %26, align 8
  %50 = getelementptr inbounds %struct.u132, %struct.u132* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %12
  %54 = load %struct.u132*, %struct.u132** %26, align 8
  %55 = getelementptr inbounds %struct.u132, %struct.u132* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.u132*, %struct.u132** %26, align 8
  %59 = getelementptr inbounds %struct.u132, %struct.u132* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.u132*, %struct.u132** %26, align 8
  %63 = getelementptr inbounds %struct.u132, %struct.u132* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.u132*, %struct.u132** %26, align 8
  %66 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %67 = load %struct.urb*, %struct.urb** %14, align 8
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @u132_hcd_forget_urb(%struct.u132* %65, %struct.u132_endp* %66, %struct.urb* %67, i32 %69)
  br label %197

71:                                               ; preds = %12
  %72 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %73 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %78 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.u132*, %struct.u132** %26, align 8
  %80 = getelementptr inbounds %struct.u132, %struct.u132* %79, i32 0, i32 1
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.u132*, %struct.u132** %26, align 8
  %83 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %84 = load %struct.urb*, %struct.urb** %14, align 8
  %85 = load i32, i32* @EINTR, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @u132_hcd_giveback_urb(%struct.u132* %82, %struct.u132_endp* %83, %struct.urb* %84, i32 %86)
  br label %197

88:                                               ; preds = %71
  %89 = load %struct.u132*, %struct.u132** %26, align 8
  %90 = getelementptr inbounds %struct.u132, %struct.u132* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load %struct.u132*, %struct.u132** %26, align 8
  %95 = getelementptr inbounds %struct.u132, %struct.u132* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.urb*, %struct.urb** %14, align 8
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %98)
  %100 = load %struct.u132*, %struct.u132** %26, align 8
  %101 = getelementptr inbounds %struct.u132, %struct.u132* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.u132*, %struct.u132** %26, align 8
  %104 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %105 = load %struct.urb*, %struct.urb** %14, align 8
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @u132_hcd_giveback_urb(%struct.u132* %103, %struct.u132_endp* %104, %struct.urb* %105, i32 %107)
  br label %197

109:                                              ; preds = %88
  %110 = load %struct.urb*, %struct.urb** %14, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %180, label %114

114:                                              ; preds = %109
  %115 = load %struct.urb*, %struct.urb** %14, align 8
  %116 = getelementptr inbounds %struct.urb, %struct.urb* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @usb_pipein(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %122 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %121, i32 0, i32 2
  %123 = load %struct.u132_ring*, %struct.u132_ring** %122, align 8
  store %struct.u132_ring* %123, %struct.u132_ring** %29, align 8
  %124 = load %struct.u132*, %struct.u132** %26, align 8
  %125 = getelementptr inbounds %struct.u132, %struct.u132* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.u132*, %struct.u132** %26, align 8
  %128 = getelementptr inbounds %struct.u132, %struct.u132* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %131 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %134 = load %struct.urb*, %struct.urb** %14, align 8
  %135 = load i32, i32* %27, align 4
  %136 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %137 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @u132_hcd_configure_input_recv, align 4
  %140 = call i32 @usb_ftdi_elan_edset_input(%struct.TYPE_4__* %129, i32 %132, %struct.u132_endp* %133, %struct.urb* %134, i32 %135, i32 %138, i32 0, i32 %139)
  store i32 %140, i32* %28, align 4
  %141 = load i32, i32* %28, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %120
  %144 = load %struct.u132*, %struct.u132** %26, align 8
  %145 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %146 = load %struct.urb*, %struct.urb** %14, align 8
  %147 = load i32, i32* %28, align 4
  %148 = call i32 @u132_hcd_giveback_urb(%struct.u132* %144, %struct.u132_endp* %145, %struct.urb* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %120
  br label %197

150:                                              ; preds = %114
  %151 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %152 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %151, i32 0, i32 2
  %153 = load %struct.u132_ring*, %struct.u132_ring** %152, align 8
  store %struct.u132_ring* %153, %struct.u132_ring** %31, align 8
  %154 = load %struct.u132*, %struct.u132** %26, align 8
  %155 = getelementptr inbounds %struct.u132, %struct.u132* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.u132*, %struct.u132** %26, align 8
  %158 = getelementptr inbounds %struct.u132, %struct.u132* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load %struct.u132_ring*, %struct.u132_ring** %31, align 8
  %161 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %164 = load %struct.urb*, %struct.urb** %14, align 8
  %165 = load i32, i32* %27, align 4
  %166 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %167 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @u132_hcd_configure_empty_recv, align 4
  %170 = call i32 @usb_ftdi_elan_edset_input(%struct.TYPE_4__* %159, i32 %162, %struct.u132_endp* %163, %struct.urb* %164, i32 %165, i32 %168, i32 0, i32 %169)
  store i32 %170, i32* %30, align 4
  %171 = load i32, i32* %30, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %150
  %174 = load %struct.u132*, %struct.u132** %26, align 8
  %175 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %176 = load %struct.urb*, %struct.urb** %14, align 8
  %177 = load i32, i32* %30, align 4
  %178 = call i32 @u132_hcd_giveback_urb(%struct.u132* %174, %struct.u132_endp* %175, %struct.urb* %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %150
  br label %197

180:                                              ; preds = %109
  %181 = load %struct.u132*, %struct.u132** %26, align 8
  %182 = getelementptr inbounds %struct.u132, %struct.u132* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load %struct.urb*, %struct.urb** %14, align 8
  %186 = load %struct.urb*, %struct.urb** %14, align 8
  %187 = getelementptr inbounds %struct.urb, %struct.urb* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32*, i8*, ...) @dev_err(i32* %184, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %185, i32 %188)
  %190 = load %struct.u132*, %struct.u132** %26, align 8
  %191 = getelementptr inbounds %struct.u132, %struct.u132* %190, i32 0, i32 1
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load %struct.u132*, %struct.u132** %26, align 8
  %194 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %195 = load %struct.urb*, %struct.urb** %14, align 8
  %196 = call i32 @u132_hcd_giveback_urb(%struct.u132* %193, %struct.u132_endp* %194, %struct.urb* %195, i32 0)
  br label %197

197:                                              ; preds = %180, %179, %149, %93, %76, %53
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_ftdi_elan_edset_input(%struct.TYPE_4__*, i32, %struct.u132_endp*, %struct.urb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
