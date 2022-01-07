; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.ep_data* }
%struct.ep_data = type { i64, i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.kiocb_priv = type { i32 }

@STATE_EP_ENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s halt\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ep_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.ep_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kiocb_priv*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 0
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %6, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.ep_data*, %struct.ep_data** %17, align 8
  store %struct.ep_data* %18, %struct.ep_data** %7, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %25 = call i32 @get_ready_ep(i32 %23, %struct.ep_data* %24, i32 1)
  store i32 %25, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %174

29:                                               ; preds = %2
  %30 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %31 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STATE_EP_ENABLED, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %94

38:                                               ; preds = %29
  %39 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %40 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %39, i32 0, i32 5
  %41 = call i32 @usb_endpoint_dir_in(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %94, label %43

43:                                               ; preds = %38
  %44 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %45 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %44, i32 0, i32 5
  %46 = call i64 @usb_endpoint_xfer_isoc(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %50 = call i64 @is_sync_kiocb(%struct.kiocb* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %54 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %174

58:                                               ; preds = %48
  %59 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %60 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %63 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DBG(%struct.TYPE_2__* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %67 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_irq(i32* %69)
  %71 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %72 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %58
  %79 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %80 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @usb_ep_set_halt(i32* %81)
  br label %83

83:                                               ; preds = %78, %58
  %84 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %85 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %90 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @EBADMSG, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %174

94:                                               ; preds = %38, %29
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @kmalloc(i64 %95, i32 %96)
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %106 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %174

110:                                              ; preds = %94
  %111 = load i8*, i8** %11, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %114 = call i32 @copy_from_iter_full(i8* %111, i64 %112, %struct.iov_iter* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i32, i32* @EFAULT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %167

123:                                              ; preds = %110
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @ep_config(%struct.ep_data* %131, i8* %132, i64 %133)
  store i32 %134, i32* %10, align 4
  br label %166

135:                                              ; preds = %123
  %136 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %137 = call i64 @is_sync_kiocb(%struct.kiocb* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @ep_io(%struct.ep_data* %140, i8* %141, i64 %142)
  store i32 %143, i32* %10, align 4
  br label %165

144:                                              ; preds = %135
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call %struct.kiocb_priv* @kzalloc(i32 4, i32 %145)
  store %struct.kiocb_priv* %146, %struct.kiocb_priv** %12, align 8
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %10, align 4
  %149 = load %struct.kiocb_priv*, %struct.kiocb_priv** %12, align 8
  %150 = icmp ne %struct.kiocb_priv* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %153 = load %struct.kiocb_priv*, %struct.kiocb_priv** %12, align 8
  %154 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i32 @ep_aio(%struct.kiocb* %152, %struct.kiocb_priv* %153, %struct.ep_data* %154, i8* %155, i64 %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @EIOCBQUEUED, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  store i8* null, i8** %11, align 8
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %144
  br label %165

165:                                              ; preds = %164, %139
  br label %166

166:                                              ; preds = %165, %130
  br label %167

167:                                              ; preds = %166, %120
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @kfree(i8* %168)
  %170 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  %171 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %170, i32 0, i32 1
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %167, %104, %83, %52, %27
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @get_ready_ep(i32, %struct.ep_data*, i32) #1

declare dso_local i32 @usb_endpoint_dir_in(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32*) #1

declare dso_local i64 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DBG(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_ep_set_halt(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @copy_from_iter_full(i8*, i64, %struct.iov_iter*) #1

declare dso_local i32 @ep_config(%struct.ep_data*, i8*, i64) #1

declare dso_local i32 @ep_io(%struct.ep_data*, i8*, i64) #1

declare dso_local %struct.kiocb_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ep_aio(%struct.kiocb*, %struct.kiocb_priv*, %struct.ep_data*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
